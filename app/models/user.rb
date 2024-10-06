# frozen_string_literal: true

# User class used for authentication
class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  enum :role, { admin: 0, coach: 1, player: 2, passive: 3 }

  # Associations for role-specific profiles
  has_one :player_profile, dependent: :destroy
  has_one :coach_profile, dependent: :destroy

  validates :role, presence: true
  validates :email, presence: true
  validates :name, presence: true

  after_create :create_role_specific_profile

  private

  def create_role_specific_profile
    if player?
      create_player_profile
    elsif coach?
      create_coach_profile
    elsif admin?
      create_player_profile
      create_coach_profile
    end
  end
end
