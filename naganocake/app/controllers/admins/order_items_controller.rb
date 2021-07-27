class Admins::OrderItemsController < ApplicationController

  before_action :authenticate_admin!

  def update
    order_item = OrderItem.find(params[:id])
    order_item.update(order_item_params)
    order = order_item.order
    @order_items = order.order_items
    # create_items = @order_items.where(create_status: 3)
    if order_item.create_status == "製作中"
      order.order_status = 2
      order.save
    elsif @order_items.all? {|create_items| create_items.create_status == "製作完了"}
      order.order_status = 3
      order.save
    end
    # elsif @order_items.count == create_items.count
    #   order.order_status = 3
    #   order.save
    # end
    redirect_to request.referer
  end

  private

  def order_item_params
    params.require(:order_item).permit(:create_status )
  end

end
