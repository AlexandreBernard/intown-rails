class Meeting < ActiveRecord::Base
  belongs_to :trip
  belongs_to :friend

  has_one    :location, foreign_key: :meeting_location_id
  has_many   :recommendations, class_name: 'Location'

  accepts_nested_attributes_for :location
  accepts_nested_attributes_for :recommendations

  serialize :timeslots, Hash

  before_create :generate_random_id

  def generate_random_id
    self.id ||= rand(2**53)
  end

  after_create :send_invite

  def send_invite
    MeetingMailer.invite(self).deliver unless friend.emails.empty?
  end
end
