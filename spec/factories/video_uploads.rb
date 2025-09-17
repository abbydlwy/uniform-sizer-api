FactoryBot.define do
  factory :video_upload do
    user { nil }
    video_file_name { "MyString" }
    video_file_size { 1 }
    video_url { "MyString" }
    ai_processing_status { "MyString" }
    processed_at { "2025-09-17 05:06:20" }
    delete_after { "2025-09-17 05:06:20" }
  end
end
