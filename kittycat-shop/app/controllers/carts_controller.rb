class CartsController < ApplicationController

  def show()
    @cart = current_user.cart
  end

  def total_price()
    @tot = 0
    @cart.cart_items.each do |cart_item|
      @tot += cart_item.item.price
    end
    return @tot
  end

  def remove_item(item)
    @cart.items.delete item
  end


end
