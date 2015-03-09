require 'httparty'

require 'dotenv'
Dotenv.load

require 'pry'

class Station < ActiveRecord::Base
  belongs_to :user_stations
  has_many :users, through: :user_stations

  include HTTParty
  format :json
  
  WMATA_KEY = ENV.fetch("WMATA_KEY")

  def self.bus_station (lat, lon, radius = 500)
    HTTParty.get("https://api.wmata.com/Bus.svc/json/jBusPositions?Lat=#{lat}&Lon=#{lon}&Radius=#{radius}&api_key=#{WMATA_KEY}")
  end

  def self.metro_station (lat, lon, radius = 500)
    HTTParty.get("https://api.wmata.com/Rail.svc/json/jStationEntrances?Lat=#{lat}&Lon=#{lon}&Radius=#{radius}&api_key=#{WMATA_KEY}")
  end

  def self.bike_station (lat, lon)

  end

  def self.create_bus_station (stop_id)

  end
end