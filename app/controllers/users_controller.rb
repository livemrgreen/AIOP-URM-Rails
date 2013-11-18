class UsersController < ApplicationController

	def index
		if authorized_user?
			users = User.select("id, username")
			render json: users.to_json(only: [:id, :username]), status: 200			
		else
			render json: nil, status: 401
		end
	end

	def show
		user = current_user
		if user.admin?
			render json: user, status: 200
		else
			render json: nil, status: 400
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
