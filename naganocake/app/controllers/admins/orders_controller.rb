class Admins::OrdersController < ApplicationController

  before_action :authenticate_admin!

  def index
    # @orders = Order.page(params[:page]).per(10)
    case params[:order_sort]
    when "0"
      @customer = Customer.find(params[:customer_id])
      @orders = @customer.orders
      @orders_all = @orders.page(params[:page]).per(10)
    else
      @orders = Order.all
      @orders_all = @orders.page(params[:page]).per(10)
    end
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    redirect_to admins_order_path(order)
  end

  def order_params
    params.require(:order).permit(:order_status, :customer_id)
  end

end
