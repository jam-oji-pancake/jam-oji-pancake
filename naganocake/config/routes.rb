Rails.application.routes.draw do

  root :to => 'public/homes#top'
  get '/about', to: 'public/homes#about', as: 'about'

  get '/mypage',to: 'public/customers#mypage',as:'mypage'
  get '/mypage/edit',to: 'public/customers#mypage_edit',as:'mypage_edit'
  get '/mypage/caution',to: 'public/customers#mypage_caution',as:'mypage_cation'
  patch '/mypage/taikai' => 'public/customers#taikai', as: 'customer_taikai'
  put '/mypage/taikai'=> 'public/customers#taikai'

  get '/select',to: 'public/orders#select',as:'select'
  post '/confirm',to: 'public/orders#confirm',as:'confirm'
  get '/finish',to: 'public/orders#finish',as:'finish'


  get '/carts' => 'public/carts#my_cart'
  post '/carts' => 'public/carts#add_item'
  patch '/carts/:id/' => 'public/carts#update_item', as: 'update_item'
  delete '/carts/destroy_all' => 'public/carts#destroy_all', as: 'destroy_all'
  delete '/carts/:id/' => 'public/carts#delete_item', as: 'delete_item'
  # delete '/carts/destroy_all' => 'public/carts#destroy_all', as: 'destroy_all'

  scope module: :public do
    resources :items, only: [:index, :show ]
  end

  # namespace :public do
  #   get 'items/index'
  #   get 'items/show'
  # end

  # namespace :public do
  #   get 'homes/top'
  #   get 'homes/about'
  # end

  scope module: :public do
    resources :deliveries, only: [:index, :create, :edit, :update, :destroy ]
  end

  scope module: :public do
    resources :customers, only: [:update]
  end

  scope module: :public do
    resources :orders, only: [:index, :show, :create]
  end


  # namespace :public do
  #   get 'orders/index'
  #   get 'orders/show'
  #   get 'orders/select'
  #   get 'orders/confirm'
  #   get 'orders/finish'
  # end

  namespace :admins do
    resources :genres, only: [:index, :create, :edit, :update]
  end

  namespace :admins do
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
  end

  namespace :admins do
    root 'orders#index'
    post '/orders',to: 'orders#index',as:'orders'
    resources :orders, only: [:index, :show, :update]
    # get 'orders/index'
    # get 'orders/show'
  end

  namespace :admins do
    resources :customers
    # get 'customers/index'
    # get 'customers/show'
    # get 'customers/edit'
  end

  namespace :admins do
    resources :order_items, only: [:update]
  end

devise_for :admins, controllers: {
  sessions:      'admins/admins/sessions',
  passwords:     'admins/admins/passwords',
}
 devise_for :customers, controllers: {
   sessions:      'public/customers/sessions',
   passwords:     'public/customers/passwords',
   registrations: 'public/customers/registrations'
 }

  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
