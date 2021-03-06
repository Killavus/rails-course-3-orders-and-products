class Product < ActiveRecord::Base
  has_many :order_lines
  has_many :orders, through: :order_lines

  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
