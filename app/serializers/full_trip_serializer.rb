class FullTripSerializer < TripSerializer
  has_many :friends
  has_many :meetings
end
