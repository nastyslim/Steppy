class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		

		respond_to do |format|
	      if @user.save
	        format.html { redirect_to @user, notice: 'user was successfully created.' }
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
		@following = Steppy.where(:followid => @user.username)
	end

end

