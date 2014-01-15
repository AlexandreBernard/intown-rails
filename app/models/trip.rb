class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :meetings
  has_many :friends, through: :meetings
  has_many :recommendations, through: :meetings

  accepts_nested_attributes_for :friends
  
  validates :user, presence: true
end
