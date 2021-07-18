Rails.application.routes.draw do
  
  root :to => 'public/homes#top'
  
  get '/about', to: 'public/homes#about', as: 'about'
  
  scope module: :public do
    resources :customers
  end
  
  

  namespace :public do
    get 'carts/my_cart'
  end

  namespace :public do
    get 'items/index'
    get 'items/show'
  end

  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end

  namespace :public do
    get 'deliveries/index'
    get 'deliveries/edit'
  end



  namespace :public do
    get 'orders/index'
    get 'orders/show'
    get 'orders/select'
    get 'orders/confirm'
    get 'orders/finish'
  end

  namespace :admins do
    get 'genres/index'
    get 'genres/edit'
  end

  namespace :admins do
    get 'items/index'
    get 'items/show'
    get 'items/new'
    get 'items/edit'
  end

  namespace :admins do
    get 'orders/index'
    get 'orders/show'
  end

  namespace :admins do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end

  devise_for :custmers
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
