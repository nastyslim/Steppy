module ApplicationHelper
	def regionlist
    	Steppy.where(:goal => @steppy.goal)
  	end


  	def search
  		return Steppy.where(:goal => params[:search])
  	end
end
