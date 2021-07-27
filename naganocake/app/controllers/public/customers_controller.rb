class Public::CustomersController < ApplicationController
  
  before_action :authenticate_customer!
  
  def mypage
    @customer = Customer.find(current_customer.id)
  end

  def mypage_edit
    @customer = Customer.find(current_customer.id)
  end

  def mypage_caution
  end
  
  def taikai
    @customer = Customer.find(current_customer.id)
    @customer.update(is_valid:true)
    reset_session
    redirect_to root_path
  end

  def update
    @customer = Customer.find(current_customer.id)
    if @customer.update(customer_params)
      flash[:notice] = "会員情報の更新が完了しました"
      redirect_to mypage_path
    else
      render :mypage_edit
    end
  end

 private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :first_kana, :last_kana, :post_code, :address, :phone ,:email)
  end

end
