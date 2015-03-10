json.stations @stations do |station|
  json.name station["name"]
  json.terminal station["terminalName"]
  json.type "bike"
end