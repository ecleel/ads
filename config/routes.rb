Ads::Engine.routes.draw do
  namespace :admin do
    resources :campaigns do    
      resources :ads
    end
    resources :banners
  end
  
  resources :ads, only: :index
end
