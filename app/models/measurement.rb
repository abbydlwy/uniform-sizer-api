class Measurement < ApplicationRecord
  belongs_to :user
  belongs_to :video_upload
end
