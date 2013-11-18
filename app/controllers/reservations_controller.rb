class ReservationsController < ApplicationController
	def index
		reservations = Reservation.all
		if reservations
			render json: reservations, status: 200
		else
			render json: nil, status: 400
		end
	end
end
