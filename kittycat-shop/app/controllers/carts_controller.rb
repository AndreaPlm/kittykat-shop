class CartsController < ApplicationController

  def show()
    @cart = current_user.cart
  end

  def add_item_to_cart()
    current_user.cart.add_item(item)
  end

  def remove_item(cart_item)
    @cart.remove_item(cart_item)
    redirect_to :back
  end






end
