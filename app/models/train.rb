class Train < Station

  def self.metro_station (lat, lon, radius = 500)
    placeholder = HTTParty.get("https://api.wmata.com/Rail.svc/json/jStationEntrances?Lat=#{lat}&Lon=#{lon}&Radius=#{radius}&api_key=#{WMATA_KEY}")
    stops = placeholder["Entrances"]
  end

  def station_info
    HTTParty.get("https://api.wmata.com/StationPrediction.svc/json/GetPrediction/#{name}?api_key=<Your subscription key>")
  end
  # def self.create_train_station (stop_array)
  #   stop_array.each do |stop|
  #     Train.create(stop)
  #   end
  # end

end