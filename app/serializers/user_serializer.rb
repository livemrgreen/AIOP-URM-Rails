class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :access_token, :isAdmin, :teacher_id
end
