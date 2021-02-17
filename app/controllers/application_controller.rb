class ApplicationController < ActionController::Base

  helper_method :current_player
  def current_player
    Player.find(session[:player_id]) if logged_in?
  end

  helper_method :logged_in?
  def logged_in?
    session[:player_id].present?
  end

end
