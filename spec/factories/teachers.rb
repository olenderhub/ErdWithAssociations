FactoryGirl.define do
  factory :teacher do
    full_name { FFaker::NameMX.full_name }
  end
end
