json.fav_stop @fav_stop do |stop|
  json.name stop["RouteID"]
  json.minutes stop["Minutes"]
  json.direction stop["DirectionText"]
end