# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "MyString"
    email "MyString"
    teacher false
    admin false
    password_digest "MyString"
    bearer_token "MyString"
  end
end
