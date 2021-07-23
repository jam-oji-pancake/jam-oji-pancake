class Public::CartsController < ApplicationController
  
  before_action :set_line_item, only: [:add_item, :destroy]
  before_action :set_user
  before_action :set_cart
  
  def my_cart
  end
  
  def add_item
    @cart =Cart.new
  end
  
  def update_item
  end
  
  def delete_item
  end
  
  def destroy_all
  end
  
private
  def set_user
    @user = current_user
  end

  def set_line_item
    @line_item = current_cart.line_items.find_by(product_id: params[:product_id])
  end

  def set_cart
    @cart = current_cart
  end
  
end
