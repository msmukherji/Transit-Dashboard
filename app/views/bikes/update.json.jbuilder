json.fav_station @fav_station do |station|
  json.name station["name"]
  json.bikes station["nbBikes"]
  json.emptydocks station["nbEmptyDocks"]
end