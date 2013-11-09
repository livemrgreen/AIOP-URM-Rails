class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :teacher, :admin, :password_digest, :remember_token
end
