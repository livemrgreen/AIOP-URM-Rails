class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :label, :module_id

  has_many :lessons
end
