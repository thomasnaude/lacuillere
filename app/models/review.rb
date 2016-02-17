class Review < ActiveRecord::Base
  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }, numericality: true
  belongs_to :restaurant, required: true
end
