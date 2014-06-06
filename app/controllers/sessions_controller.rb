class SessionsController < ApplicationController

  def create
  	user = User.find_by_username params[:username]
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id 
  		redirect_to steppies_path, notice: "Logged In"
  	else
  		redirect_to new_user_path, notice: "Username/Password Incorrect. Did Not Log In."
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: "Logged Out"
  end
end
