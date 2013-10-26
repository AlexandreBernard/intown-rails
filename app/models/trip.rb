class Trip < ActiveRecord::Base
  has_many :meetings
end
