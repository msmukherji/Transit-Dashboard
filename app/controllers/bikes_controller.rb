class BikesController < ApplicationController
  def show
    #train_params = params[:lat,:lon,:radius]
    bike_params = {lat: "38.852833", lon: "-77.049543"}#, radius: "300"}
    @stations = Bike.bike_station(bike_params[:lat],bike_params[:lon])#,bus_params[:radius])
  end

  def update
    station = Bike.create(params[:id], user_id: current_user.id)
    @fav_station = station.station_info
  end

  def refresh
    @fav_stations = []
    favorites = current_user.stations
    favorites.each do |favorite|
      if favorite.type = "bike"
        @fav_stations << favorite.station_info
      end
    end
    render :refresh
  end

  def delete
    s = Station.find_by(name: params[:id])
    s.delete!
  end
end