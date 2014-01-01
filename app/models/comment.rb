class Comment < ActiveRecord::Base
  belongs_to :steppy
  attr_accessible :body, :name
end
