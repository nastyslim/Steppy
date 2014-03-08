class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		

		respond_to do |format|
	      if @user.save
	        format.html { redirect_to @user, notice: 'User was Successfully Created. Please Log In.' }
	        format.json { render json: @user, status: :created, location: @user }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
    	end
	end

	def show
		@user = User.find(params[:id])
		@steppy = Steppy.where(:userid => @user.username)
		@checklist = Checklist.all
		


			
	end

	def followSteppy
		currsteppy = Steppy.find(params[:id])
		current_user.follow(currsteppy)

		@chklist = Checklist.create(:chk_steppy_id => currsteppy.goal, :chk_user_id => current_user.username, :chk1 => "Done?", :chk1 => "Done?", :chk2 => "Done?", :chk3 => "Done?", :chk4 => "Done?", :chk5 => "Done?", :chk6 => "Done?", :chk7 => "Done?", :chk8 => "Done?", :chk9 => "Done?", :chk10 => "Done?")


		
		respond_to do |format|
	      format.html { redirect_to currsteppy }
	      format.js 
	    end
	end

	def unfollowSteppy
		currsteppy = Steppy.find(params[:id])
		current_user.stop_following(currsteppy)
		@chklist = Checklist.where(:chk_steppy_id => currsteppy.goal, :chk_user_id => current_user.username).first
		@chklist.destroy 
		

		respond_to do |format|
	      format.html { redirect_to currsteppy }
	      format.js
	    end
	end

end

