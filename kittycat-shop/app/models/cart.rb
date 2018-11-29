class Cart < ApplicationRecord

  belongs_to :user
  has_many :cart_items
  has_many :items, through: :cart_items

  def add_one(cart_item)
    cart_item.quantity += 1
    cart_item.save
  end

  def remove_one(cart_item)
    cart_item.quantity -= 1
    cart_item.save
  end

  def total_price
    tot = 0.00
    cart_items.each do |cart_item|
      tot += cart_item.item.price.to_f * cart_item.quantity
    end
    return tot
  end

  def count_items
    nb_items = 0
    cart_items.each do |cart_item|
      nb_items += cart_item.quantity
    end
    return nb_items
  end

end
