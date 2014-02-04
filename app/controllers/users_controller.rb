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

		@chklist = Checklist.create(:chk_steppy_id => currsteppy.goal, :chk_user_id => currsteppy.userid, :chk1 => "In Progress")


		redirect_to currsteppy
	end

	def unfollowSteppy
		currsteppy = Steppy.find(params[:id])
		current_user.stop_following(currsteppy)
		@chklist = Checklist.where(:chk_steppy_id => currsteppy.goal, :chk_user_id => currsteppy.userid).first
		@chklist.destroy 
		

		redirect_to currsteppy
	end

end

