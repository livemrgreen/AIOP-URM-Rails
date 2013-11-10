class LessonTypesController < ApplicationController
	def index
		lesson_types = LessonType.all(limit: 5)
		render json: lesson_types, status: 200
	end

	def show
		lesson_type = LessonType.find(params[:id])
		render json: lesson_type, status: 200
	end
end
