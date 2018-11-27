class Cart < ApplicationRecord

  belongs_to :user
  has_many :cart_items
  has_many :items, through: :cart_items

  def add_item(item)
    id = item.id
    cart_item = cart_items.find_by(item_id: id)
    if cart_item
      cart_item.quantity += 1
      cart_item.save
    else
      items << item
    end
  end

  def remove_item(cart_item)
    cart_item.quantity = 0
    cart_item.save
  end

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
      tot += cart_item.item.price.to_f
    end
    return tot
  end

end
