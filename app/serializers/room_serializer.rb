class RoomSerializer < ActiveModel::Serializer
  attributes :id, :label, :capacity, :building_id
end
