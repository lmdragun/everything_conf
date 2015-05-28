class Users < ApplicationController::Base

	def index
		@user = User.find(params[:id])
		@all_users = User.all
		@follows = Follows.all
	end

	def show
		
	end

end
