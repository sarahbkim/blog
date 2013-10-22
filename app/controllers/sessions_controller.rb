class SessionsController < ApplicationController

def create
	user = User.find_by_email(params[:email])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id 
		redirect_to admin_url, notice: "Logged In!" 
	else
		flash.now.alert = "Email or password is invalid" 
end


end
