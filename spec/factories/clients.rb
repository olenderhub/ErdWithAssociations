FactoryGirl.define do
  factory :client do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    age { Faker::Number.number(2) }
    phone_number { Faker::Number.number(9) }
    email { FFaker::Internet.email }
  end
end
