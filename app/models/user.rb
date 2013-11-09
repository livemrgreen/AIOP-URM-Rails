class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	before_create :create_bearer_token
	
	has_secure_password

	def User.new_bearer_token
		return SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		return Digest::SHA1.hexdigest(token.to_s)
	end

	private
		def create_bearer_token
			self.bearer_token = User.encrypt(User.new_bearer_token)
		end
end
