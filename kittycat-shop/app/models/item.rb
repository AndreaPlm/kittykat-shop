class Item < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_url, presence: true

  has_many :cart_items
  has_many :item_orders
  has_many :carts, through: :cart_items

  has_one_attached :picture
  

  has_many :orders, through: :item_orders


end
