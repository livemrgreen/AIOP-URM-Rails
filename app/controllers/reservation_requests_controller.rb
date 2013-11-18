class ReservationRequestsController < ApplicationController
	def index
		reservation_requests = ReservationRequest.all
		if reservation_requests
			render json: reservation_requests, status: 200
		else
			render json: nil, status: 400
		end
	end
end
