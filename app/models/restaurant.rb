class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w(chinese italian japanese french belgian),
  message: "%{value} is not a valid category" }
end
