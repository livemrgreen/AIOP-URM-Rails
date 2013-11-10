class RoomsController < ApplicationController
	def index
		rooms = Room.all(limit: 5)
		render json: rooms, status: 200
	end

	def show
		room = Room.find(params[:id])
		render json: room, status: 200
	end
end
