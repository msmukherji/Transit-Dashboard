json.fav_stop @fav_stop do |stop|
  json.name stop["Line"]
  json.destination stop["DestinationName"]
  json.minutes stop["Min"]
end