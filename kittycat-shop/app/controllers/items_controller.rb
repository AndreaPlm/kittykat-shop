class ItemsController < ApplicationController
  def index
    @items = Item.all

  end

  def show
   @id = params["id"]
  end
end
