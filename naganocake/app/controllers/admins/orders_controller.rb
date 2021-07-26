class Admins::OrdersController < ApplicationController

  before_action :authenticate_admin!

  def index
    @orders = Order.page(params[:page]).per(10)
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
  end

  def order_params
    params.require(:order).permit(:order_status )
  end

end
