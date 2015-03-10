class Bus < Station
  
  def self.bus_station (lat, lon, radius = 500)
    placeholder = HTTParty.get("https://api.wmata.com/Bus.svc/json/jStops?Lat=#{lat}&Lon=#{lon}&Radius=#{radius}&api_key=#{WMATA_KEY}")
    stops = placeholder["Stops"]
  end

  def station_info
    HTTParty.get("https://api.wmata.com/NextBusService.svc/json/jPredictions?#{name}&api_key=#{WMATA_KEY}")
  end
end