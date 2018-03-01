class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, :restaurant_id, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, length: { minimum: 5 }
  validates :rating, numericality: true

end
