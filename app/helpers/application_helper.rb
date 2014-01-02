module ApplicationHelper
	def regionlist
    	Steppy.where(:goal => @steppy.goal)
  	end

  	def search
  		Steppy.where("lower(goal) = ?", params[:search].downcase)
  	end
end
