FactoryGirl.define do
  factory :sport do
    name { FFaker::Sport.name }
  end
end
