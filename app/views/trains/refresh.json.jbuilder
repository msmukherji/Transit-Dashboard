if @fav_stops.nil? == false
	json.fav_stops @fav_stops do |stop|
  		json.stopName stop[0]["LocationName"]
  		json.trains @fav_stops do |pred|
  			json.line pred["Line"]
  			json.destination pred["DestinationName"]
  			json.minutes pred["Min"]
  		end
	end
end
