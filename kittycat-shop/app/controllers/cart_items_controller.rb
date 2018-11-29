class CartItemsController < ApplicationController

  def create()
    puts "params : #{params}"
    c = CartItem.new
    c.cart = current_user.cart
    c.item = Item.find(params[:format])
    c.save
    redirect_to root_path
  end

  def update()
    cart_item = CartItem.find(params[:id])
    cart_item.quantity = params[:quantity]
    cart_item.save
    redirect_to cart_path
  end

  def destroy()
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_path
  end

end
