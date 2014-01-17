class Steppy < ActiveRecord::Base
  attr_accessible :ask, :description, :goal, :region, :step1, :step10, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :userid, :followid
  
  belongs_to :user

  has_many :reps

  validates_presence_of :goal, :step1, :step2, :step3, :region, :description, :unless => :is_there_ask

  def is_there_ask
  	ask.present?
  end
end
