class BusesController < ApplicationController
  #before_action :authenticate_user!
	# def index
	# 	@buses = ["gregbus", "mattbus", "mishkabus"]
	# end

  def show
    # #bus_params = params[:lat,:lon,:radius]
    bus_params = {lat: "38.852833", lon: "-77.049543", radius: "300"}
    @stops = Bus.bus_station(bus_params[:lat],bus_params[:lon],bus_params[:radius])
  end

  def update
    Station.create(name: params[:id], type: "bus")
  end
end