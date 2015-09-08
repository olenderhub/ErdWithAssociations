FactoryGirl.define do
  factory :student do
    full_name { FFaker::NameMX.full_name }
  end
end
