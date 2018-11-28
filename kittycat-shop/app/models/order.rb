class Order < ApplicationRecord
  belongs_to :user
  has_many :item_orders
  has_many :items, through: :item_orders

  def total_price()
    tot = 0.00
    items.each do |item|
      tot += item.price.to_d
    end
    return tot
  end
end
