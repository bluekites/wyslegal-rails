Rails.application.routes.draw do
  
  root 'home#index'
  devise_for :users
  resources :posts, path: "blog"
  resources :contacts, only: [:new, :create]
  get '*path' => redirect('/404')
  
end
