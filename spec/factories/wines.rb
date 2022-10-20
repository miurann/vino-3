FactoryBot.define do
  factory :wine do
    name { "MyString" }
    producer { "MyString" }
    vintage { 1 }
    label { "MyString" }
    image { "MyString" }
    category { 1 }
    color { 1 }
    price { 1 }
    description { 1 }
    sweetness { 1 }
    body { 1 }
    acidity { 1 }
    tannin { 1 }
    region { nil }
  end
end
