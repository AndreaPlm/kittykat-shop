class Item < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_url, presence: true

  has_many :cart_items
  has_many :carts, through: :cart_items
  
  has_and_belongs_to_many :orders
  has_one_attached :picture
  
end
