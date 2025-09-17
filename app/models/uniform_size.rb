class UniformSize < ApplicationRecord
  belongs_to :user
  belongs_to :measurement
  belongs_to :size_chart
end
