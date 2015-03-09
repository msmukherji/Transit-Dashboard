class Train < Station

  def self.metro_station (lat, lon, radius = 500)
    HTTParty.get("https://api.wmata.com/Rail.svc/json/jStationEntrances?Lat=#{lat}&Lon=#{lon}&Radius=#{radius}&api_key=#{WMATA_KEY}")
  end

end