class MeetingSerializer < ActiveModel::Serializer
  attributes :id, :location, :timeslots
  has_one :friend
end
