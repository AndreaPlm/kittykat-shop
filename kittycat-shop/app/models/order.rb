class Order < ApplicationRecord
  belongs_to :user
  has_many :item_orders
  has_many :items, through: :item_orders

  def total_price()
    tot = 0.00
    item_orders.each do |item_order|
      tot += item_order.item.price.to_d * item_order.quantity
    end
    return tot
  end
end
