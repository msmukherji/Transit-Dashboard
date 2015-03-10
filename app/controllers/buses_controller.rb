class BusesController < ApplicationController
before_action :authenticate_user!, only: [:update]
  def show
    # #bus_params = params[:lat,:lon,:radius]
    bus_params = {lat: "38.852833", lon: "-77.049543", radius: "300"}
    @stops = Bus.bus_station(bus_params[:lat],bus_params[:lon],bus_params[:radius])
  end

  def update

    stop = Bus.create(name: params[:id], user_id: current_user.id)
    favorite_stop = stop.station_info
    @fav_stop = favorite_stop["Predictions"]
  end

  # def display_favorites
  #   @favorite_stops.each do |stop|
  #     @fav_info << stop.station_info
  #   end
  #   return @fav_info
  # end
end