class ItemsController < ApplicationController
  def index

    @items = Item.all


  end

  def show
   @id = params["id"]
   @item= Item.find(params[:id])


  end

  def update

  	 @item= Item.find(params[:id])
  	 @item.picture.attach(params[:item][:picture])
  	 redirect_to "/"

  end
 private

#  def item_params
#  	params.require(:item).permit(:title, :description, :price, :picture)
#  end
end
