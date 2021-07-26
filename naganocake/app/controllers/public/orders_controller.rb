class Public::OrdersController < ApplicationController
  
  before_action :authenticate_customer!
  
  def create
    @customer = current_customer
    @order = Order.new(order_params)
    @order.customer_id = @customer.id
    if @order.save
    @cart_items = @customer.carts
     @cart_items.each do |carts|
        @order_items = @order.order_items.new
        @order_items.order_id = @order.id
        @order_items.item_id = carts.item.id
        @order_items.tax_price = carts.item.add_tax_price
        @order_items.count = carts.count
        @order_items.save
     end
     @customer.carts.destroy_all
     flash[:notice] = "注文が完了しました"
     redirect_to finish_path
    else
     @deliveries = @customer.deliveries
     render :select
    end
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
    @order.customer_id = @customer.id
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
    params.require(:order).permit(:post_code, :address, :name, :payment, :send_cost, :perfect_price, :order_status )
  end

end
# :order_item_id, :send_cost, :order_status, :perfect_price,