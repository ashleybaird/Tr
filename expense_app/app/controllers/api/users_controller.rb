class Api::UsersController < ApplicationController
	def index
		@user = User.all
		render json: @user
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	def create
		@user = User.create(user_params)
		if @user.errors.any?
       		redirect_to root_path
    else 
		user = User.find_by(username: params[:username])
		Trip.create(user_id: user.id)
		session[:user_id] = user.id
		redirect_to user_path(user)
	end
	end

	def update
		@user = User.find(session[:user_id])
       if logged_in? && check_current_user? 
        @user.image_url = params[:image]
        @user.save(:validate => false)
        render :json
      else
        redirect_to user_path(@user)
      end
	end

	private

	def user_params
		params.permit(:username, :password)
	end


end