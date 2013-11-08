class TeachingSerializer < ActiveModel::Serializer
  attributes :id, :group_id, :lesson_id, :teacher_id
end
