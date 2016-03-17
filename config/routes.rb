Rails.application.routes.draw do
  
  root 'home#index'
  devise_for :users
  devise_scope :user do
    get "/admin" => "devise/sessions#new"
  end
  resources :posts, path: "blog"
  resources :contacts, only: [:new, :create]
  get '*path' => redirect('/404')
  
end
