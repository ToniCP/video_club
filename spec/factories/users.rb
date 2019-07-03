FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    encrypted_password { Faker::Internet.password(8, 30) }
    role_user 'user'
  end
end
