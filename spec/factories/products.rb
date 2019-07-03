FactoryGirl.define do
  factory :product do
    title { Faker::Name.title }
    description { Faker::Company.catch_phrase }
    image_url { Faker::Avatar.image }
    date { Faker::Date.between(2.days.ago, Date.today) }
    price { Faker::Number.decimal(2) }
  end
end
