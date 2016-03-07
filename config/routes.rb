Rails.application.routes.draw do
  
  resources :posts, path: "blog"
  
  root 'home#index'
end
