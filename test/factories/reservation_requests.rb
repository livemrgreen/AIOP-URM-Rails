# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation_request do
    date_time "2013-11-10 18:45:56"
    time_slot_id 1
    teaching_id 1
  end
end
