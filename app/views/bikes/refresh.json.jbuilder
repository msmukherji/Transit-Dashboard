json.fav_stations @fav_stations do |station|
  json.name station["name"]
  json.bikes station["nbBikes"]
  json.emptydocks station["nbEmptyDocks"]
end