class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :from_date, :to_date
end
