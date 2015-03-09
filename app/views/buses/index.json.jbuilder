json.array! @buses do |bus|
  json.name bus
  json.buses [1,5,10] do |n|
    json.route       "Some route for stop '#{bus}'"
    json.arrival     Time.now + n.minutes
    json.destination "Nowhere"
  end
end