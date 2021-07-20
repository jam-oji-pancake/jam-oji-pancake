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
    item.save(item_params)
    redirect_to admins_item_path(item)
    # redirect_to request.referer
  end

  def edit
  end

  def update
  end

private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price, :is_sale )
  end

end
