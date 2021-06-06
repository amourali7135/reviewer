FactoryBot.define do
  factory :project do
    title { "MyString" }
    photo { "MyString" }
    description { "MyText" }
    price_cents { 1 }
    offerings { "MyText" }
    completion { "2021-06-06" }
    time_taken { "MyString" }
    business { nil }
  end
end
