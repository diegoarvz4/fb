FactoryBot.define do
  factory :comment do
    post { nil }
    author { nil }
    content { "MyString" }
  end
end
