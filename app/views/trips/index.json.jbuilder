json.array!(@trips) do |trip|
  json.extract! trip, :name, :location, :from_date, :to_date
  json.url trip_url(trip, format: :json)
end
