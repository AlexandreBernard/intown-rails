class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :from_date, :to_date
  has_many :friends
end
