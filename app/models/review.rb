class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5]
  validates :content, presence: true
  belongs_to :restaurant
  validates :rating, inclusion: { in: RATING }
  validates :rating, numericality: {only_integer: true}
end
