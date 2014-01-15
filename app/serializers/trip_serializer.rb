class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :from, :to, :latitude, :longitude
end
