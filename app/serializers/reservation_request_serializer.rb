class ReservationRequestSerializer < ActiveModel::Serializer
  attributes :id, :date_time, :time_slot_id, :teaching_id
end
