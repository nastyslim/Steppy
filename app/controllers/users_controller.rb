class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to @user
		else
			redirect 'new'
		end
	end

	def show
		@user = User.find(params[:id])
		@steppy = Steppy.where(:userid => current_user.username)
		@following = Steppy.where(:followid => current_user.username)
	end

end

