class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items
  has_many :items, through: :cart_items



  def total_price
    tot = 0.00
    cart_items.each do |cart_item|
      tot += cart_item.item.price.to_f
    end
    return tot
  end
end
