FactoryGirl.define do
  factory :payment_history do
    credit_rating { Faker::Number.between(1, 10) }
  end
end
