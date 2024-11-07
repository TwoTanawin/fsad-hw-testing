FactoryBot.define do
  factory :user do
    name { "Test User" }
    email { "teacher@example.com" }
    password { "password" }

    trait :teacher do
      role { :teacher }
    end
  end
end
