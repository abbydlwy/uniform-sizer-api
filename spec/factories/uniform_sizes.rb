FactoryBot.define do
  factory :uniform_size do
    user { nil }
    measurement { nil }
    size_chart { nil }
    final_size_label { "MyString" }
    source { "MyString" }
  end
end
