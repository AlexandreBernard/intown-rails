class MeetingSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :friend_id, :location, :timeslots
  has_one :friend
end
