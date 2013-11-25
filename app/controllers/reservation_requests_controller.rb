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
		reservation_request = ReservationRequest.find_by(id: params[:id])
		if reservation_request
			render json: reservation_request, status: 200
		else
			render json: nil, status: 400
		end
	end
end
