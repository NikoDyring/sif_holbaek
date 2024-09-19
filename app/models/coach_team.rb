# frozen_string_literal: true

# Join-table for Teams and Coach profiles
class CoachTeam < ApplicationRecord
  belongs_to :coach_profile
  belongs_to :team
end
