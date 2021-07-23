class Public::OrdersController < ApplicationController
  def create
    @order = Order.new
    @order.customer_id = current_customer.id
    @order.save
    redirect_to finish_path
  end

  def index
  end

  def show
  end

  def select
    @order = Order.new
    @customer = current_customer
    # @deliveries = @customer.deliveries
    @order.customer_id = @customer.id
  end

  def confirm
    @cart_list = Cart.all
    @customer = current_customer
    @order = Order.new(order_params)
    @order.name = @customer.first_name,@customer.last_name
    @order.post_code = @customer.post_code
    @order.address = @customer.address
    # @order = Order.new
  end

  def finish
  end

  private

  def order_params
    params.require(:order).permit(:post_code, :address, :name, :payment )
  end

end
# :order_item_id, :send_cost, :order_status, :perfect_price,