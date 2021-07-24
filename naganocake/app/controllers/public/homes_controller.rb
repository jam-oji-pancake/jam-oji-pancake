class Public::HomesController < ApplicationController
  def top
    @all_items =  Item.where(is_sale: true)
    @items = @all_items.page(params[:page]).per(4).reverse_order
    @genres = Genre.all
  end

  def about
  end
end
