module UsersHelper
	def current_user=(user)
		@current_user = user
	end

	def current_user
		bearer_token = User.encrypt(params[:bearer_token])
		@current_user ||= User.find_by(bearer_token: bearer_token)
	end

	def current_user?(user)
		return user == current_user
	end
end
