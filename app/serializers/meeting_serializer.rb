class MeetingSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :friend_id, :location, :timeslots
end
