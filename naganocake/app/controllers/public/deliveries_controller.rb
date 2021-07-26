class Public::DeliveriesController < ApplicationController

  before_action :authenticate_customer!

  def index
  @customer = current_customer
  @delivery = Delivery.new
  @deliveries = @customer.deliveries
  end

  def create
  @delivery = Delivery.new(delivery_params)
  @delivery.customer_id = current_customer.id

   if @delivery.save
    flash[:notice] = "新しい住所を登録しました"
    redirect_to  deliveries_path
   else
    @customer = current_customer
    @deliveries = @customer.deliveries
    render :index
   end

  end

  def edit
  @delivery = Delivery.find(params[:id])
  end

  def update
  @delivery = Delivery.find(params[:id])
   if @delivery.update(delivery_params)
     flash[:notice] = "新しい住所を登録しました"
     redirect_to  deliveries_path
   else
    render :edit
   end
  end

  def destroy
  delivery = Delivery.find(params[:id])
  delivery.destroy
  redirect_to  deliveries_path
  end

  private

  def delivery_params
   params.require(:delivery).permit(:post_code, :address, :name, :customer_id)
  end

end

