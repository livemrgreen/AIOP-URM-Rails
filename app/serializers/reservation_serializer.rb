class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :date_time, :time_slot_id, :room_id, :teaching_id
end
