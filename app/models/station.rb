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

end