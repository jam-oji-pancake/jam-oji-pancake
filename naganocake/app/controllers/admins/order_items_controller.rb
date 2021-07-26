class Admins::OrderItemsController < ApplicationController
  
  before_action :authenticate_admin!

  def update
    order_item = OrderItem.find(params[:id])
    order = order_item.order_id
    order_item.update(order_item_params)
    redirect_to admins_order_path(order)
  end

  private

  def order_item_params
    params.require(:order_item).permit(:create_status )
  end

end
