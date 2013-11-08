class BuildingsController < ApplicationController
	def index
		buildings = Building.all(limit: 5)
		render json: buildings, status: 200
	end
end
