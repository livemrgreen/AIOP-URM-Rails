class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :teacher, :admin, :password_digest, :bearer_token
end
