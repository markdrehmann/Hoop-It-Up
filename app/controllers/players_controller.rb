class PlayersController < ApplicationController

    def new
        @player = Player.new
    end

    def create
        @player = Player.new(player_params)
        if @player.save
            session[:player_id] = @player.id
            flash[:alert] = "Player Created!"
            redirect_to player_path(@player)
        else
            render :new
        end
    end

    def show
        @player = current_player
    end

    private

    def player_params
        params.require(:player).permit(:name, :email, :password)
    end
end