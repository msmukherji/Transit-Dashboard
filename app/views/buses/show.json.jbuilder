json.stops @stops do |stop|
  json.name stop["Name"]
  json.routes stop["Routes"]
  json.stop_id stop["StopID"]
  json.type "bus"
end