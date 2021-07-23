class Public::DeliveriesController < ApplicationController

  def index
  @customer = current_customer
  @delivery = Delivery.new
  @deliveries = @customer.deliveries
  end

  def create
  delivery = Delivery.new(delivery_params)
  delivery.customer_id = current_customer.id
  delivery.save
  redirect_to  deliveries_path
  end

  def edit
  @delivery = Delivery.find(params[:id])
  end

  def update
  delivery = Delivery.find(params[:id])
  delivery.update(delivery_params)
  redirect_to  deliveries_path
  end

  def destroy
  delivery = Delivery.find(params[:id])
  delivery.destroy(delivery_params)
  redirect_to  deliveries_path
  end

  private

  def delivery_params
   params.require(:delivery).permit(:post_code, :address, :name, :customer_id)
  end

end

