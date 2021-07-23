class Public::HomesController < ApplicationController
  def top
    @all_items = Item.all
    @items = Item.page(params[:page]).per(4).reverse_order
    @genres = Genre.all
  end

  def about
  end
end
