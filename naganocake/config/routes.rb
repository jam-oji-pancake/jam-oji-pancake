Rails.application.routes.draw do
  namespace :public do
    get 'deliveries/index'
    get 'deliveries/edit'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/caution'
  end
  namespace :public do
    get 'orders/index'
    get 'orders/show'
    get 'orders/select'
    get 'orders/confirm'
    get 'orders/finish'
  end
  devise_for :custmers
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
