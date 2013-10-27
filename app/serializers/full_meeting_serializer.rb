class FullMeetingSerializer < ActiveModel::Serializer
  attributes :id, :location, :timeslots
  has_one :trip
end
