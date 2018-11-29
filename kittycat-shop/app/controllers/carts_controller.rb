class CartsController < ApplicationController

  before_action :authenticate_user!

  def show()
    @cart = current_user.cart
  end

end
