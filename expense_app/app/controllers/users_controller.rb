class UsersController < ApplicationController
	def index
		@user = User.all
	end

	def show
		if session[:user_id] == nil
      		redirect_to root_path
    	elsif logged_in? && check_current_user?
    		@user = User.find(session[:user_id])
    	 else
        redirect_to user_path(session[:user_id])
      end

	end

end