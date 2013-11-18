class UsersController < ApplicationController

	def index
		users = User.all
		if users
			render json: users, status: 200
		else
			render json: nil, status: 401
		end
	end

	def create
		render json: nil, status: 400
	end

	def update
		render json: nil, status: 400
	end

	def destroy
		render json: nil, status: 400
	end

	private
		def authorized_user?
			token = params[:access_token]
			token = User.encrypt(token)
			if token != nil
				user = User.find_by(access_token: token)
				return (user != nil)
			else
				return false
			end
		end
end
