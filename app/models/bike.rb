class Bike < Station

  def self.bike_station (lat, lon)
    station_array = []
    lat_a = lat.to_f
    lon_a = lon.to_f

    bikes = HTTParty.get("https://www.capitalbikeshare.com/data/stations/bikeStations.xml")
    bike_array = bikes["stations"]["station"]

    bike_array.each do |station|
      lon_b = station["long"].to_f
      lat_b = station["lat"].to_f
      distance = Haversine.distance(lat_a, lon_a, lat_b, lon_b).to_m
      if distance < 500
        station_array << station
      end
    end
    return station_array
  end
end