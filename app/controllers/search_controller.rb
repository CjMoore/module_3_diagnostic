class SearchController < ApplicationController

  def index
    @stations = Station.find_nearest_stations(params[:search])
  end
end
