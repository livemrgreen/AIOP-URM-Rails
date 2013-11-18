class LessonsController < ApplicationController
	def index
		lessons = Lesson.all
		if lessons
			render json: lessons, status: 200
		else
			render json: nil, status: 400
		end
	end
end
