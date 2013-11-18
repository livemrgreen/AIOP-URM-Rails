class TeachingsController < ApplicationController
	def index
		teachings = Teaching.all
		if teachings
			render json: teachings, status: 200
		else
			render json: nil, status: 400
		end
	end
end
