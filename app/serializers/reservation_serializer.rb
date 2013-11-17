class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :date_time, :time_slot_id, :romm_id, :teaching_id
end
