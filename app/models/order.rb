class Order < ActiveRecord::Base
  has_many :order_lines
  has_many :products, through: :order_lines

  validates :city,       presence: true
  validates :street,     presence: true
  validates :apartament, presence: true
end
