# frozen_string_literal: true

# Inhouse team class, might change in the future to be more advanced
class Team < ApplicationRecord
  has_many :player_teams, dependent: :destroy
  has_many :player_profiles, through: :player_teams
  has_many :coach_teams, dependent: :destroy
  has_many :coach_profiles, through: :coach_teams
end
