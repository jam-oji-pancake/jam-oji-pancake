class Public::CartsController < ApplicationController

  def my_cart
   @carts = Cart.all
  end

  def add_item
   cart = Cart.new(cart_params)
  # cart_paramsの中には、item_idとcountカラムが入っている
   cart.customer_id = current_customer.id
  # カラムの中にあるcostomer_idを定義
   cart.save
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
    params.require(:cart).permit(:item_id, :count )
  end

end

