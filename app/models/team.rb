# frozen_string_literal: true

# Inhouse team class, might change in the future to be more advanced
class Team < ApplicationRecord
  has_and_belongs_to_many :player_profiles
  has_and_belongs_to_many :coach_profiles
end
