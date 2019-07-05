FactoryGirl.define do
  factory :comment do
    user nil
    product nil
    body { Faker::Company.catch_phrase }
  end
end
