json.array!(@fav_stops) do |stop|
  json.stop stop["StopName"]
  json.predictions @fav_stops do |pred|
  	p = pred["Predictions"]
  	p.each do |q|
  		json.route q["RouteID"]
  		json.minutes q["Minutes"]
  		json.direction q["DirectionText"]
  	end
  end
end
