class ApplicationController < ActionController::Base

    helper_method :current_player
    def current_player
      User.find(session[:player_id])
    end
  
    helper_method :logged_in?
    def logged_in?
      session[:player_id].present?
    end

end
