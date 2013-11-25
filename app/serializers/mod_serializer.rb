class ModSerializer < ActiveModel::Serializer
  attributes :id, :label, :teacher_id

  has_many :subjects, embed: :ids
end
