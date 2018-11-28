class CartItemsController < ApplicationController

  def update()
    puts "in update"
    puts "params : #{params}"
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

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end



end
