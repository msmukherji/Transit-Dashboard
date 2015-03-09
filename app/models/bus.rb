class Bus < Station
  
  def bus_station (lat, lon, radius = 500)
    stops = HTTParty.get("https://api.wmata.com/Bus.svc/json/jBusPositions?Lat=#{lat}&Lon=#{lon}&Radius=#{radius}&api_key=#{WMATA_KEY}")
  end

  def create_bus_station (stop_array)
    stop_array.each do |stop|
      Station.create(stop)
    end
  end
end