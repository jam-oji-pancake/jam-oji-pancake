class Public::CartsController < ApplicationController
  before_action :authenticate_customer!

  def my_cart
    @cart_list = Cart.all
    # @cart = Cart.find(params[:id])
    
    

  end

  def add_item
    @cart = Cart.new(cart_params)
    @cart.customer_id = current_customer.id

    # @item = Item.find(params[:item_id])
    # @cart = @item.carts.new(customer_id: current_customer.id)

    @cart.save
    redirect_to carts_path



  end

  def update_item

  end

  def delete_item


  end

  def destroy_all
  end

  private
  def cart_params
    params.require(:cart).permit(:item_id, :count)
  end

end
