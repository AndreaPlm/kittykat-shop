class CartsController < ApplicationController

  def show()
    @cart = current_user.cart
  end

  def remove_item(item)
    @cart.items.delete item
  end


end
