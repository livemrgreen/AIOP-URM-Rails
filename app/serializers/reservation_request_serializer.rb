class ReservationRequestSerializer < ActiveModel::Serializer
  attributes :id, :date_time, :teaching_id
end
