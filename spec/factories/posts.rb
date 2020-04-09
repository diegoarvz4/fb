FactoryBot.define do
  factory :post do
    created_by { nil }
    content { "MyString" }
  end
end
