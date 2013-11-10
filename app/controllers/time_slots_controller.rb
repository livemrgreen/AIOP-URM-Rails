class TimeSlotsController < ApplicationController
	def index
		time_slots = TimeSlot.all(limit: 5)
		render json: time_slots, status: 200
	end

	def show
		time_slot= TimeSlot.find(params[:id])
		render json: time_slot, status: 200
	end
end
