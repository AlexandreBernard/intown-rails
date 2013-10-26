class Meeting < ActiveRecord::Base
  belongs_to :trip
  belongs_to :friend
end
