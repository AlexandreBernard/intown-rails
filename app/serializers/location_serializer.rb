class LocationSerializer < ActiveModel::Serializer
  attributes :latitude, :longitude, :foursquare
end
