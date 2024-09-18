# frozen_string_literal: true

# Players controller, for the players POV of the web application
class PlayersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_player

  def dashboard
    @player = current_user.player_profile
  end

  private

  def ensure_player
    redirect_to root_path unless current_user.player? || current_user.admin?
  end
end
