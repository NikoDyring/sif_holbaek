# frozen_string_literal: true

# PlayerProfile is the online profile for a player.
class PlayerProfile < ApplicationRecord
  belongs_to :user
  belongs_to :team

  has_many :player_teams, dependent: :destroy
  has_many :teams, through: :player_teams

  enum :position, { goalkeeper: 0, defence: 1, midfield: 2, forward: 3 }
end
