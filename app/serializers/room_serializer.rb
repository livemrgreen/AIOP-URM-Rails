class RoomSerializer < ActiveModel::Serializer
  attributes :id, :label, :capacity, :building_id

  has_many :characteristics, include: false
end
