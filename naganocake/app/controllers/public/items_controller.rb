class Public::ItemsController < ApplicationController
  def index
    @all_items = Item.all
    @items = Item.page(params[:page]).reverse_order
    @genres = Genre.all



  end

  def show
    @item = Item.find(params[:id])
    @genres = Genre.all
  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price, :is_sale,:genre_id )
  end


end
