class UsersController < ApplicationController
	def index
		users = User.all(limit: 5)
		render json: users, status: 200
	end

	private
		def safe_params
			return params.require(:user).permit(:first_name, :last_name)
		end
end
