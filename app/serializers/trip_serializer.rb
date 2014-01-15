class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :from, :to, :latitude, :longitude, :user_id # temporarily
end
