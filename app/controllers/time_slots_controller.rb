class TimeSlotsController < ApplicationController
	def index
		time_slots = TimeSlot.all
		if time_slots
			render json: time_slots, status: 200
		else
			render json: nil, status: 401
		end
	end
end
