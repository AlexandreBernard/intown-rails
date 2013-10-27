class Meeting < ActiveRecord::Base
  belongs_to :trip
  belongs_to :friend

  serialize :timeslots, Array
  serialize :location, Hash
end
