class Bus < Station
  
  def self.bus_station (lat, lon, radius = 500)
    placeholder = HTTParty.get("https://api.wmata.com/Bus.svc/json/jStops?Lat=#{lat}&Lon=#{lon}&Radius=#{radius}&api_key=#{WMATA_KEY}")
    stops = placeholder["Stops"]
  end

  def self.create_bus_station (bus_params)
    Station.create(name: bus_params, type: "bus")
  end
end