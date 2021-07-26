class Public::CartsController < ApplicationController
  
  before_action :authenticate_customer!

  def my_cart
    @customer = current_customer
    @cart_list = @customer.carts
  end

  def add_item
    @cart = Cart.new(cart_params)
    @cart.customer_id = current_customer.id
    @cart.save
    redirect_to carts_path
  end

  def update_item
    @cart = Cart.find(params[:id])

    @cart.update(cart_params)

    redirect_to carts_path

  end

  def delete_item
    @cart = Cart.find(params[:id])
    # cart = @cart.item.find(params[:id])
    @cart.destroy
    redirect_to carts_path
  end
  
  def destroy_all
    Cart.destroy_all
    redirect_to root_path
  end

  private
  def cart_params
    params.require(:cart).permit(:item_id, :count)
  end

end