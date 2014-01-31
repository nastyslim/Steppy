class User < ActiveRecord::Base
  attr_accessible :password, :password_confirmation, :username, :email
  has_secure_password
  
  has_many :steppies

 
  validates :username, presence: true, :uniqueness => {:case_sensitive => false}
  validates :email, presence: true
  validates_format_of :email, :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
end
