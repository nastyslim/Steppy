class User < ActiveRecord::Base
  attr_accessible :password, :password_confirmation, :username
  has_secure_password
  
  has_many :steppies

  
 
  validates :username, presence: true, uniqueness: true
end
