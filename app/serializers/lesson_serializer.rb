class LessonSerializer < ActiveModel::Serializer
  attributes :id, :label

  has_one :lesson_type
  # has_many :teachings, embed: :objects
end
