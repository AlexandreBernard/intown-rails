json.trips([@trip]) do |trip|
  json.partial! trip
end
