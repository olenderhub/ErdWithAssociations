FactoryGirl.define do
  factory :worker do
    full_name { FFaker::NameMX.full_name }
  end
end
