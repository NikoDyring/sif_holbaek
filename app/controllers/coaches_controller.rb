# frozen_string_literal: true

# Coaches controller, for the coaches POV of the web application
class CoachesController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_coach

  def dashboard
    @coach = current_user.coach_profile
  end

  private

  def ensure_coach
    redirect_to root_path unless current_user.coach? || current_user.admin?
  end
end
