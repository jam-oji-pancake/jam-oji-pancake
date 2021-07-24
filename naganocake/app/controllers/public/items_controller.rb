class Public::ItemsController < ApplicationController
  def index
    @all_items = Item.where(is_sale: true)
    @items = @all_items.page(params[:page]).reverse_order
    @genres = Genre.all
  end

  def show
    @cart = Cart.new
    p @cart
    @item = Item.find(params[:id])
    @genres = Genre.all

  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price, :is_sale,:genre_id )
  end


end

