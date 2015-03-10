class TrainsController < ApplicationController
  def show
    train_params = {lat: "38.852833", lon: "-77.049543", radius: "600"}
    @stops = Train.metro_station(train_params[:lat],train_params[:lon],train_params[:radius])
    
    binding.pry
  end

  def update
  end
end