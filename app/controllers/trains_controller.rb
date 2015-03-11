class TrainsController < ApplicationController
  def show
    #train_params = params[:lat,:lon,:radius]
    train_params = {lat: "38.852833", lon: "-77.049543", radius: "600"}
    @stops = Train.metro_station(train_params[:lat],train_params[:lon],train_params[:radius])
  end

  def update
    #@chosen_trains = Train.create_train_station(params[:stop_array])
    stop = Train.create(name: params[:id], user_id: current_user.id)
    favorite_stop = stop.station_info
    @fav_stop = favorite_stop["Trains"]
    render :update
  end

  def refresh
    @fav_stops = []
    favorites = current_user.stations
    favorites.each do |favorite|
      if favorite.type = "train"
        @fav_stops << favorite.station_info
      end
    end
    render :refresh
  end

  def delete
    s = Station.find_by(name: params[:id])
    s.delete!
  end
  
end