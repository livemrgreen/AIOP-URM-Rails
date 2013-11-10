class SigninController < ApplicationController
	def create
		user = User.find_by(email: params[:email].downcase)
		if user && user.authenticate(params[:password])
			bearer_token = User.new_bearer_token
			user.update_attribute(:bearer_token, User.encrypt(bearer_token))
			render json: bearer_token, status: 200
		else
			render json: nil, status: 401
		end
	end

	private
		def signin_params
			return params.require(:user).permit(:email, :password)
		end
end
