class User < ActiveRecord::Base
  attr_accessible :password, :password_confirmation, :username, :email, :avatar
  has_secure_password
  acts_as_follower
  has_many :steppies
  has_attached_file :avatar




 
  validates :username, presence: true, :uniqueness => {:case_sensitive => false}
  validates :email, presence: true
  validates_format_of :email, :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
  validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, :message=>"Image file must be of .jpeg,'.jpg', '.gif' or .png type",:allow_nil => true



  acts_as_liker
end
