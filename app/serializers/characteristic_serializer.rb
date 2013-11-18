class CharacteristicSerializer < ActiveModel::Serializer
  attributes :id, :label

  has_many :rooms, include: false
end
