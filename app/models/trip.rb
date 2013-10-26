class Trip < ActiveRecord::Base
  has_many :meetings
  has_many :friends, through: :meetings

  accepts_nested_attributes_for :friends
end
