class ModSerializer < ActiveModel::Serializer
  attributes :id, :label, :module_manager_id

  has_many :subjects
end
