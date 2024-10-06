# frozen_string_literal: true

# Join-table for Teams and Player profiles
class PlayerTeam < ApplicationRecord
  belongs_to :player_profile
  belongs_to :team
end
