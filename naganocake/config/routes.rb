Rails.application.routes.draw do

  root :to => 'public/homes#top'
  get '/about', to: 'public/homes#about', as: 'about'
  get '/mypage',to: 'public/customers#show',as:'mypage'
  

  
  
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

  scope module: :public do
    resources :deliveries, only: [:index, :create, :edit, :update, :destroy ]
  end

  scope module: :public do
    resources :customers, only: [:edit, :caution, :update]
  end

  # namespace :public do
  #   get 'customers/show'
  #   get 'customers/edit'
  #   get 'customers/caution'
  # end

  namespace :public do
    get 'orders/index'
    get 'orders/show'
    get 'orders/select'
    get 'orders/confirm'
    get 'orders/finish'
  end

  namespace :admins do
    # get 'genres/index'
    # get 'genres/edit'
    resources :genres, only: [:index, :create, :edit, :update]
  end

  namespace :admins do
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    # get 'items/index'
    # get 'items/show'
    # get 'items/new'
    # get 'items/edit'
  end

  namespace :admins do
    root 'orders#index'
    get 'orders/index'
    get 'orders/show'
  end

  namespace :admins do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end

devise_for :admins, controllers: {
  sessions:      'admins/admins/sessions',
  passwords:     'admins/admins/passwords',
}
devise_for :custmers, controllers: {
  sessions:      'public/custmers/sessions',
  passwords:     'public/custmers/passwords',
  registrations: 'public/custmers/registrations'
}

  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
