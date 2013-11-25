class TeachersController < ApplicationController
	def index
		teachers = Teacher.all
		if teachers
			render json: teachers, status: 200
		else
			render json: nil, status: 400
		end
	end

	def show
		teacher = Teacher.find_by(id: params[:id])
		if teacher
			render json: teacher, status: 200
		else
			render json: nil, status: 400
		end
	end
end
