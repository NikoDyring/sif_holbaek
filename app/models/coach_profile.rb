# frozen_string_literal: true

# CoachProfile is the online profile of the coaches.
class CoachProfile < ApplicationRecord
  belongs_to :user
  belongs_to :team

  has_and_belongs_to_many :teams
end
