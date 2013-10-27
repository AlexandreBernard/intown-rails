class MeetingSerializer < ActiveModel::Serializer
  attributes :id, :timeslots
  has_one :friend, :location
  has_many :recommendations
end
