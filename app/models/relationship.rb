class Relationship < ActiveRecord::Base
  attr_accessible :followed_id, :follower_id

  belongs_to :steppy
end
