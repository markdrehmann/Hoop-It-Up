class CourtsController < ApplicationController
  def index
    @courts = Court.all
    # @court = Game.court_with_most_games
  end

  def new
    @court = Court.new
  end

  def create
    @court = Court.new(court_params)
    if @court.save
      flash[:alert] = "New Court Added"
      redirect_to courts_path
    else
      flash[:error] = "oops"
      render new_court_path
    end
  end

  private

  def court_params
    params.require(:court).permit(:name, :address)
  end
end