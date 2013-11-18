class LessonTypesController < ApplicationController
	def index
		lesson_types = LessonType.all
		if lesson_types
			render json: lesson_types, status: 200
		else
			render json: nil, status: 400
		end
	end
end
