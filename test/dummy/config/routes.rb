Rails.application.routes.draw do

  resources :posts

  mount Ads::Engine => "/ads"
end
