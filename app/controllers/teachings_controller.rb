class TeachingsController < ApplicationController
	def index
		teachings = Teaching.all(limit: 5)
		render json: teachings, status: 200
	end

	def show
		teaching = Teaching.find(params[:id])
		render json: teaching, status: 200
	end
end
