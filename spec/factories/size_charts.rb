FactoryBot.define do
  factory :size_chart do
    chart_name { "MyString" }
    gender { "MyString" }
    size_label { "MyString" }
    min_height { "9.99" }
    max_height { "9.99" }
    min_belly_round { "9.99" }
    max_belly_round { "9.99" }
    min_arm_length { "9.99" }
    max_arm_length { "9.99" }
  end
end
