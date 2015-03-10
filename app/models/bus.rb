class Bus < Station
  
  def self.bus_station (lat, lon, radius = 500)
    placeholder = HTTParty.get("https://api.wmata.com/Bus.svc/json/jStops?Lat=#{lat}&Lon=#{lon}&Radius=#{radius}&api_key=#{WMATA_KEY}")
    stops = placeholder["Stops"]
  end

  def self.create_bus_station (stop_array)
    stop_array.each do |stop|
      Station.create(stop)
    end
  end
end