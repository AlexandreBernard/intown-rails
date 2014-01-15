class FullMeetingSerializer < ActiveModel::Serializer
  attributes :id, :timeslots
  has_one :trip
  has_one :location
  has_many :recommendations
  belongs_to :user
end
