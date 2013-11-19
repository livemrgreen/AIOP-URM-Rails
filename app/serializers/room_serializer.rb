# require 'rails/app/serializers/characteristic_for_room_serializer.rb'

class RoomSerializer < ActiveModel::Serializer
  attributes :id, :label, :capacity, :building_id

  has_many :characteristics, embed: :ids
end
