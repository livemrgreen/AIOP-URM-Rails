class UsersController < ApplicationController
	def index
		users = User.select("id, name, email").all(limit: 5)
		render json: users.to_json(only: [:id, :name, :email]), status: 200
	end
end
