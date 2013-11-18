class User < ActiveRecord::Base
	before_save { self.username = username.downcase }
	before_create :create_access_token
	
	has_secure_password

	def User.new_access_token
		return SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		return Digest::SHA1.hexdigest(token.to_s)
	end

	private
		def create_access_token
			self.access_token = User.encrypt(User.new_access_token)
		end
end
