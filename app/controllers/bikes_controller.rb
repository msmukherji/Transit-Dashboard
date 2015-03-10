class BikesController < ApplicationController
  def show
    #train_params = params[:lat,:lon,:radius]
    bike_params = {lat: "38.852833", lon: "-77.049543"}#, radius: "300"}
    @stations = Bike.bike_station(bike_params[:lat],bike_params[:lon])#,bus_params[:radius])
  end

  def update
    @chosen_bikes = Bike.create_bike_station(params[:stop_array])
  end
end