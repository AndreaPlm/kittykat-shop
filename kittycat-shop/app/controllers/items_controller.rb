class ItemsController < ApplicationController
  def index
    @item = Item.all

  end

  def show
   @id = params["id"]
  end
end
