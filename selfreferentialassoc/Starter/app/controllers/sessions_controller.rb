class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(username: params[:session][:username])
		if user
			sign_in(user)
			redirect_to current_user
		else
			flash[:error] = "Invalid username"
			redirect_to new_session_path
		end
	end

	def destroy
		sign_out
redirect_to root_url
	end

end
