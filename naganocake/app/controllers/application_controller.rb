class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

   def after_sign_in_path_for(resource)
     case resource
     when Admin
       admins_root_path
     when Customer
       root_path
     end
   end

  # def current_cart
  #   if current_customer
  #     # ユーザーとカートの紐付け
  #     current_cart = current_customer.cart || current_user.create_cart!
  #   else
  #     # セッションとカートの紐付け
  #     current_cart = Cart.find_by(id: session[:cart_id]) || Cart.add_cart
  #     session[:cart_id] ||= current_cart.id
  #   end
  #   current_cart
  # end

  protected

   def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_kana, :last_kana, :post_code, :address, :phone])
   end

end
