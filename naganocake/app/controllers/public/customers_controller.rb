class Public::CustomersController < Public::ApplicationController
  def mypage
    @customer = Customer.find(current_customer.id)
  end

  def mypage_edit
    @customer = Customer.find(current_customer.id)
  end

  def mypage_caution
  end

  def update
    @customer = Customer.find(current_customer.id)
    @customer.update(customer_params)
    redirect_to mypage_path
  end

 private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :first_kana, :last_kana, :post_code, :address, :phone ,:email)
  end

end
