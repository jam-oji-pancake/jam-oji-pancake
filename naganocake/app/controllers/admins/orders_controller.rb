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
    @order = Order.find(params[:id])
    order_items = @order.order_items
    @order.update(order_params)
      # if @order.order_status == "入金待ち"
      #     order_items.update_all(create_status: 0)
        if @order.order_status == "入金確認"
          order_items.update_all(create_status: 1)
        # elsif @order.order_status == "製作中"
        #   order_items.update_all(create_status: 2)
        # elsif @order.order_status == "発送準備中"
        #   order_items.update_all(create_status: 3)
        # elsif @order.order_status == "発送済み"
        #   order_items.update_all(create_status: 3)
        end
    # elsif create_items.count == order_items.count
    #   # @order.joins(:order_items).where( :order_items => { :create_status => "製作完了" } ).count == order_items.count
    #   # order.update(order_status: 3)
    #   @order.order_status = "発送準備中"
    #   @order.update(order_params)
    # order.update(order_params)
    redirect_to admins_order_path(@order)
  end



  def order_params
    params.require(:order).permit(:order_status, :customer_id )
  end

end
