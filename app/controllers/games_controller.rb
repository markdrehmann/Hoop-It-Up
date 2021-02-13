class GamesController < ApplicationController
    def index
        @games = Game.all
    end

    def show
        @game = Game.find(params[:id])
    end

    def new
        @game = Game.new
    end

    def create
        @game = Game.new(game_params)
        roster = Roster.create
        roster.players << current_player
        @game.roster_id = roster.id
        if @game.save
            flash[:alert] = "New Game Created!"
            redirect_to player_path(current_player)
        else
            flash[:error] = @game.errors.full_messages.to_sentence
            render :new
        end
    end
    
    private

    def game_params
        params.require(:game).permit(:court_id, :time, :roster_id)
    end
end
