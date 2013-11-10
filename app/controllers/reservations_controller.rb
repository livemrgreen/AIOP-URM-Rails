class ReservationsController < ApplicationController
	def index
		reservations = Reservation.all(limit: 5)
		render json: reservations, status: 200
	end

	def show
		reservation = Reservation.find(params[:id])
		render json: reservation, status: 200
	end
end
