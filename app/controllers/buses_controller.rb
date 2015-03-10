class BusesController < ApplicationController

  def show
    # #bus_params = params[:lat,:lon,:radius]
    bus_params = {lat: "38.852833", lon: "-77.049543", radius: "300"}
    @stops = Bus.bus_station(bus_params[:lat],bus_params[:lon],bus_params[:radius])
  end

  def update
    stop = Bus.create(name: params[:id], user_id: current_user.id)
    favorite_stop = stop.station_info
    @fav_stop = favorite_stop["Predictions"]
    render :update
  end

  def refresh
    favorites = current_user.stations
    favorites.each do |favorite|
      if favorite.type = "bus"
        favorite.station_info
      end
    end
    render :update
  end

  def delete
    s = Station.find_by(name: params[:id])
    s.delete!
  end
  
end