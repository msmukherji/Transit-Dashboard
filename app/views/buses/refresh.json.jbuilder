json.fav_stops @fav_stops do |stop|
  json.name stop["RouteID"]
  json.minutes stop["Minutes"]
  json.direction stop["DirectionText"]
end