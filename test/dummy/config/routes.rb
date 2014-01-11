Rails.application.routes.draw do

  devise_for :users
  resources :posts

  mount Ads::Engine => "/ads"
end
