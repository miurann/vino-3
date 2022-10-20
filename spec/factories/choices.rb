FactoryBot.define do
  factory :choice do
    content { "MyText" }
    correct_answer { false }
    question { nil }
  end
end
