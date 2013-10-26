class Friend < ActiveRecord::Base
  has_many :meetings

  serialize :phones, Array
  serialize :emails, Array
end
