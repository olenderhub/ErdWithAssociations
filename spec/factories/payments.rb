FactoryGirl.define do
  factory :payment do
    amount { Faker::Number.number(2) }
  end
end
