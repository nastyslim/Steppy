class Commentsy < ActiveRecord::Base
  belongs_to :steppy
  attr_accessible :body, :title
end
