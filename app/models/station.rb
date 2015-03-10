require 'httparty'

require 'dotenv'
Dotenv.load

require 'pry'

WMATA_KEY = ENV.fetch("WMATA_KEY")


class Station < ActiveRecord::Base
  belongs_to :user

  validates :name, uniqueness: true

  include HTTParty
  format :json
  
end