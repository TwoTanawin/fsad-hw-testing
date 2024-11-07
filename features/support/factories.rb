FactoryBot.define do
  factory :user do
    email { "teacher@example.com" }
    password { "password" }
    password_confirmation { "password" }

    trait :teacher do
      role { :teacher }
    end
  end
end

FactoryBot.define do
  factory :project do
    name { "My favorite project" }
    url { "http://somewhere.com" }
  end

  factory :student do
    name { "Joe Student" }
    studentid { "123456" }
  end
end
