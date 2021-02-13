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
            flash[:error] = @player.errors.full_messages.to_sentence
            render :new
        end
    end

    def show
        @player = current_player
        @player_games = @player.games.sort_by(&:time)
    end

    private

    def player_params
        params.require(:player).permit(:name, :email, :password)
    end
end