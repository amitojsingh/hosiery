Rails.application.routes.draw do
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
