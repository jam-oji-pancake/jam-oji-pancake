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

  protected

   def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_kana, :last_kana, :post_code, :address, :phone])
   end

   def current_cart
      # セッションから取得したcart_idを元にCartテーブルからCart情報を取得
      current_cart = Cart.find_by(id: session[:cart_id])
      # Cart情報が存在しない場合、@current_cartを作成
      current_cart = Cart.create unless current_cart
      # 取得したCart情報よりIDを取得し、セッションに設定
      session[:cart_id] = current_cart.id
      # Cart情報を返却
      current_cart
   end

end
