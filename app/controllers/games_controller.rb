class GamesController < ApplicationController
  def index
    if params[:court_id]
      @court = Court.find(params[:court_id])
      @upcoming_games = Game.upcoming.where(court: @court)
      @past_games = Game.past.where(court: @court)
    else
      @upcoming_games = Game.upcoming
      @past_games = Game.past
    end
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
    @game.roster = roster
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
