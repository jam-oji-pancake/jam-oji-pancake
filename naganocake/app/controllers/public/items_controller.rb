class Public::ItemsController < ApplicationController
  def index
    @all_items = Item.all
    @items = Item.page(params[:page]).reverse_order
    
  end

  def show
  end
end
