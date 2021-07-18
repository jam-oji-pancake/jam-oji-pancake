class Admins::ItemsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.new(list_params)
    item.save
    # redirect_to admins_item_path
  end

  def edit
  end

  def update
  end

private
  def Item_params
    params.require(:item).permit(:name, :introduction, :price, :is_sale, :image)
  end

end
