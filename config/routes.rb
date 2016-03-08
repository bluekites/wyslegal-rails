Rails.application.routes.draw do
  
  devise_for :users
  resources :posts, path: "blog"
  
  get '*path' => redirect('/404')
  
  root 'home#index'
end
