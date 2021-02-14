class CourtsController < ApplicationController
    def index
        @courts = Court.all
    end

    def show
        @court = Court.find(params[:id])
        @court_upcoming_games = @court.games.select { |g| g.time > DateTime.now }.sort_by(&:time)
    end

    def new
        @court = Court.new
    end

    def create
        raise params.inspect
    end

    private

    def court_params
        params.require(:court).permit(:name, :address)
    end
end