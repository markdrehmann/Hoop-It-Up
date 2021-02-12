class WelcomeController < ApplicationController
  def home
    if logged_in?
      redirect_to player_path(current_player)
    end
  end
end
