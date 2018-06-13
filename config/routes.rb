Rails.application.routes.draw do

  namespace :manufacturing do
    resources :knittings
  end
  post 'orders/colordata', to: 'orders#colordata'
  post 'manufacturing/knittings/orderfind', to: 'manufacturing/knittings#orderfind'
  namespace :master do
    resources :parts
  end
  namespace :master do
    resources :tasks
  end
  namespace :master do
    resources :yarns
  end
  root to: 'home#index'
  get 'home/index'

  resources :orders
  resources :designs
  namespace :master do
    resources :varieties
  end
  namespace :master do
    resources :typenumbers
  end
  namespace :master do
    resources :employes
  end
  namespace :master do
    resources :colors
  end
  namespace :master do
    resources :sizes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
