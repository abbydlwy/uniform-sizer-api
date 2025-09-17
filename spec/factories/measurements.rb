FactoryBot.define do
  factory :measurement do
    user { nil }
    video_upload { nil }
    height { "9.99" }
    belly_round { "9.99" }
    arm_length { "9.99" }
    source { "MyString" }
  end
end
