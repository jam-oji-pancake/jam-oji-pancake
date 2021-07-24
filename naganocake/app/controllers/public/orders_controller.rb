class Public::OrdersController < ApplicationController
  def create
    @order = Order.new
  end

  def index
  end

  def show
  end

  def select
    @order = Order.new
    @customer = current_customer
    @deliveries = @customer.deliveries
    @order.customer_id = @customer.id
    @customer = current_customer
  end

  def confirm
    @customer = current_customer
    @cart_items = @customer.carts
    @order = Order.new(order_params)
    @order.send_cost = 800
    @order.payment = params[:order][:payment]
    if params[:order][:delivery_adress] == "0"
      @order.post_code = @customer.post_code
      @order.address = @customer.address
      @order.name = @customer.full_name
    elsif params[:order][:delivery_adress] == "1"
      @sta = params[:order][:order_delivery].to_i
      @order_delivery = Delivery.find(@sta)
      @order.post_code = @order_delivery.post_code
      @order.address = @order_delivery.address
      @order.name = @order_delivery.name
    elsif params[:order][:delivery_adress] == "2"
      @order.post_code = params[:order][:post_code]
      @order.address = params[:order][:address]
      @order.name = params[:order][:name]
    end
  end

  def finish
  end

  private

  def order_params
    params.require(:order).permit(:post_code, :address, :name, :payment, :send_cost, :perfect_price )
  end

end
# :order_item_id, :send_cost, :order_status, :perfect_price,