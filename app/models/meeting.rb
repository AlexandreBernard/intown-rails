class Meeting < ActiveRecord::Base
  belongs_to :trip
  belongs_to :friend

  serialize :timeslots, Array
  serialize :location, Hash

  before_create :generate_random_id

  def generate_random_id
    self.id ||= rand(2**53)
  end
end
