class Review < ApplicationRecord
  belong_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: %i[0 1 2 3 4 5] }
end
