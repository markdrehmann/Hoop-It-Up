class RostersController < ApplicationController

    def edit
        roster = Roster.find(params[:id])
        roster.players << current_player
        redirect_to player_path(current_player)
    end

end
