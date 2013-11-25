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

	def reservation_requests
		teacher = Teacher.find(params[:id])
		if teacher
			teachings = teacher.teachings
			if teachings
				requests = []
				teachings.each {
					|current_teaching|
					requests |= current_teaching.reservation_requests
				}
				render json: requests.as_json(include: [:teaching, :reservation]),
						root: "reservation_requests", status: 200
			else
				render json: nil, status: 400
			end
		else
			render json: nil, status: 400
		end
	end

	def available_reservation_requests
		teacher = Teacher.find(params[:id])
		modules = teacher.modules
		subjects = []
		modules.each {
			|current_module|
			subjects |= current_module.subjects
		}
		lessons = []
		subjects.each {
			|current_subject|
			lessons |= current_subject.lessons
		}
		teachings = []
		lessons.each {
			|current_lesson|
			teachings |= current_lesson.teachings
		}
		requests = []
		teachings.each {
			|current_teaching|
			requests |= current_teaching.reservation_requests
		}
		render json: requests.as_json(include: [:teaching, :reservation]),
						root: "reservation_requests", status: 200
	end
end
