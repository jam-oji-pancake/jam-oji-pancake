class Public::CartsController < ApplicationController
<<<<<<< HEAD

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
=======
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



>>>>>>> 2effca01a09a724be72b0d195b4cc5f3deb5b584
  end

  def update_item

  end

  def delete_item
<<<<<<< HEAD
=======
    @cart = Cart.find(params[:id])
    # cart = @cart.item.find(params[:id])
    @cart.destroy
    redirect_to carts_path

>>>>>>> 2effca01a09a724be72b0d195b4cc5f3deb5b584

  end

  def destroy_all

  end

  private
  def cart_params
<<<<<<< HEAD
    params.require(:cart).permit(:item_id, :count )
=======
    params.require(:cart).permit(:item_id, :count)
>>>>>>> 2effca01a09a724be72b0d195b4cc5f3deb5b584
  end

end

