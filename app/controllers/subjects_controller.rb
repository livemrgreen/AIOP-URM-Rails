class SubjectsController < ApplicationController
	def index
		subjects = Subject.all(limit: 5)
		render json: subjects, status: 200
	end

	def show
		subject = Subject.find(params[:id])
		render json: subject, status: 200
	end
end
