Ads::Engine.routes.draw do
  resources :campaigns do    
    resources :ads
  end
  resources :banners
end
