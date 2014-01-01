class Steppy < ActiveRecord::Base
  attr_accessible :ask, :description, :goal, :region, :step1, :step10, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9
  has_many :reps

  validates_presence_of :goal, :step1, :step2, :step3, :unless => :is_there_ask

  def search
    search = "Lawyer"
    
  end
end
