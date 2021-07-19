class Admins::ItemsController < ApplicationController

  def index
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    @genre = @item.genre
  end

  def create
    item = Item.new(item_params)
    byebug
    
    item.save
    # byebug

    redirect_to admins_item_path(item)
    # redirect_to request.referer
  end

  def edit
  end

  def update
  end

private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price, :is_sale,:genre_id )
  end

end
