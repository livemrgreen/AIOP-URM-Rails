class TimeSlotSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date
end