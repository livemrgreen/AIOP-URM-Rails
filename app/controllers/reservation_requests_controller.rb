class ReservationRequestsController < ApplicationController
	def index
		reservation_requests = ReservationRequest.all(limit: 5)
		render json: reservation_requests, status: 200
	end

	def show
		reservation_request = ReservationRequest.find(params[:id])
		render json: reservation_request, status: 200
	end
end
