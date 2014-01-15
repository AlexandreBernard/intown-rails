class User < ActiveRecord::Base
  has_many :trips
  
  has_secure_password
  
  validates :name, presence: true
  validates :email, presence: true, email: true
  validates :password, presence: true, on: :create
end
