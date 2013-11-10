class CharacteristicsController < ApplicationController
	def index
		characteristics = Characteristic.all(limit: 5)
		render json: characteristics, status: 200
	end

	def show
		characteristic = Characteristic.find(params[:id])
		render json: characteristic, status: 200
	end
end
