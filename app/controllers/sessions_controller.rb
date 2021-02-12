class SessionsController < ApplicationController

    def login
    end

    def create
        @player = Player.find_by(email: params[:email])
        if @player && @player.authenticate(params[:password])
            session[:player_id] = @player.id
            redirect_to player_path(@player)
        else
            flash[:error] = "Invalid Login!"
            redirect_to :login
        end
    end

    def logout
        session.clear
        redirect_to root_path
    end
end
