class LessonsController < ApplicationController
	def index
		lessons = Lesson.all(limit: 5)
		render json: lessons, status: 200
	end

	def show
		lesson = Lesson.find(params[:id])
		render json: lesson, status: 200
	end
end
