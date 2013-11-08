class LessonSerializer < ActiveModel::Serializer
  attributes :id, :label, :lesson_type_id, :subject_id
end
