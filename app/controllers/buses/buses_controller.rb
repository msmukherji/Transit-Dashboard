class BusesController < ApplicationController
	def index
		@buses = ["gregbus", "mattbus", "mishkabus"]
	end
end