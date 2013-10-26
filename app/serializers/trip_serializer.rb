class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :from, :to
  has_many :friends
end
