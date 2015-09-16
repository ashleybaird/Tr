class Api::TripsController < ApplicationController
	def index
		@trip = Trip.where({user_id: params[:id]})
		render json: @trip
	end

	def show
		@trip = Trip.find(params[:id])
		render json: @trip
	end

	def create
		@trip = Trip.create(trip_params)
		render json: @trip
	end

	def update
		@trip = Trip.find(params[:id])
		@trip.update(trip_params)
		render json: @trip
	end

	def destroy
		@trip = Trip.find(params[:id])
		render json: 'delete'
	end

	private

	def trip_params
		params.permit(:total, :hotel, :food, :activities, :travel, :num_days, :avg_days, :avg_hotel, :avg_food, :avg_travel, :avg_activities)
	end
end