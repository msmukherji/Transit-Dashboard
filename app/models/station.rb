class Station < ActiveRecord::Base
  belongs_to :user_stations
  has_many :users, through: :user_stations
end