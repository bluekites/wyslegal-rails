Rails.application.routes.draw do
  
  devise_for :users
  resources :posts, path: "blog"
  
  root 'home#index'
end
