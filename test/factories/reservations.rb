# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    date_time "2013-11-17 15:55:36"
    time_slot_id 1
    romm_id 1
    teaching_id 1
  end
end
