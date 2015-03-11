json.fav_stops @fav_stops do |stop|
  json.name stop["Line"]
  json.destination stop["DestinationName"]
  json.minutes stop["Min"]
end