# frozen_string_literal: true

# CoachProfile is the online profile of the coaches.
class CoachProfile < ApplicationRecord
  belongs_to :user
  belongs_to :team

  has_many :coach_teams, dependent: :destroy
  has_many :teams, through: :coach_teams
end
