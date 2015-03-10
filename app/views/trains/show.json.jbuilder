json.stops @stops do |stop|
  json.name stop["Description"]
  json.station_code stop["StationCode1"]
end