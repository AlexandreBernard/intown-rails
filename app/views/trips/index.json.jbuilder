json.trips(@trips) do |trip|
  json.partial! trip
end
