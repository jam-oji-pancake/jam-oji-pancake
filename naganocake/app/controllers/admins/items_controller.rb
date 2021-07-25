class Admins::ItemsController < ApplicationController
  
  before_action :authenticate_admin!

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
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "商品の登録が完了しました"
      redirect_to admins_item_path(item)
    else
      render :new
    end
    # redirect_to request.referer
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
     @item = Item.find(params[:id])
     if @item.update(item_params)
       flash[:notice] = "商品の編集が完了しました"
       redirect_to  admins_item_path(item)
     else
        render :edit
     end
  end


private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price, :is_sale, :genre_id )
  end

end
