class Admins::OrdersController < ApplicationController

  def index
    @orders = Order.page(params[:page]).per(10)
  end

  def show
  end

  def update
  end

  def create_jinbo
    order = Order.new(order_params)
    order.save
    redirect_to admins_root_path(item)
    
  end
end
