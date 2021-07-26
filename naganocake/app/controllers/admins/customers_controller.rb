class Admins::CustomersController < ApplicationController
  def indexs
    @customers = Customer.page(params[:page]).per(10)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to admins_customers_path
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :first_kana, :last_kana, :post_code, :address, :phone ,:email,:is_valid)
  end
end
