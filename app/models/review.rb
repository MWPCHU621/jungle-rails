class Review < ActiveRecord::Base
  belongs_to :products
  belongs_to :users

  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
