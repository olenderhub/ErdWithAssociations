FactoryGirl.define do
  factory :employee do
    full_name { Faker::NameMX.full_name }
  end
end
