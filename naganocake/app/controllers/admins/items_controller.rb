class Admins::ItemsController < ApplicationController
  
  def index
   @items = Item.page(params[:page]).per(10)
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
  end
  
  def create
    item = Item.new(item_params)
    item.save
    redirect_to admins_item_path(item)
    # redirect_to request.referer
  end
  
  def edit
    @item = Item.find(params[:id])
  end
 
  def update
     item = Item.find(params[:id])
     item.update(item_params)
     redirect_to  admins_item_path(item)
  end


private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price, :is_sale, :genre_id )
  end

end