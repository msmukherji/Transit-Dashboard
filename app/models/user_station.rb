class UserStation < ActiveRecord::Base
  has_many :users
  has_many :stations
end