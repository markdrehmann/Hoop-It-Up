class RostersController < ApplicationController

  def edit
    roster = Roster.find(params[:id])
    if roster.players.include?(current_player)
      flash[:error] = "You're already in that game, sucka"
      redirect_to games_path
    else
      roster.players << current_player
      flash[:alert] = "You're in!"
      redirect_to player_path(current_player)
    end
  end

  def leave
    roster = Roster.find(params[:id])
    roster.players.delete(current_player)
    flash[:alert] = "You've left a game"
    redirect_to player_path(current_player)
  end

  def show
    @roster = Roster.find(params[:id])
  end

end
