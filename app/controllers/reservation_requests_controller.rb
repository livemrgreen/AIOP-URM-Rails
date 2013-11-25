class ReservationRequestsController < ApplicationController
	include ApplicationHelper

	def index
		reservation_requests = ReservationRequest.all
		if reservation_requests
			render json: reservation_requests, status: 200
		else
			render json: nil, status: 400
		end
	end

	def show
		@user = current_user
		if @user.teacher?
			render json: @user.mods, status: 200
		else
			render json: nil, status: 200
		end
	end
end
