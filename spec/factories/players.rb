FactoryGirl.define do
  factory :player do
    full_name { FFaker::NameMX.full_name }
  end
end
