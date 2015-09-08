FactoryGirl.define do
  factory :subject do
    mark { Faker::Number.between(1, 6) }
  end
end
