class CartItemsController < ApplicationController

  def create()
    @user = current_user
    item = Item.find(params[:id])
    cart_item = @user.cart.cart_items.find_by(item_id: item.id) #check if item exist in cart
    if cart_item
      puts "le cart_item exist, je vais augmenter la quantité de 1"
      cart_item.quantity += 1
      cart_item.save
    else
      puts "item is new to cart, je créé un nouveau cart_item"
      current_user.cart.items << item
    end
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
