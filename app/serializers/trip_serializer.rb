class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :from, :to
end
