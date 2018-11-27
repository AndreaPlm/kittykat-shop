class CartItem < ApplicationRecord
  belongs_to :item
  belongs_to :cart

  def remove_item()
    self.quantity = 0
  end

#  def add_to_cart(item)
#    if
#    cart.items << item
#    if find
#    CartItem.create

end
