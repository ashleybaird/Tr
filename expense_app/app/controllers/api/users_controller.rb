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
		User.create(user_params)
		user = User.find_by(username: params[:username])
		session[:user_id] = user.id
		redirect_to user_path(user)
	end

	def update
		@user = User.find(params[:id])
		@user.update(avatar: params[:avatar])
		render json: @user
	end

	private

	def user_params
		params.permit(:username, :password, :avatar)
	end
end