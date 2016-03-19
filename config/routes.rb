Rails.application.routes.draw do
  
  root 'home#index'
  devise_for :users
  devise_scope :user do
    get "/admin" => "devise/sessions#new"
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
    put 'users' => 'devise/registrations#update', :as => 'user_registration' 
  end
  resources :posts, path: "blog"
  resources :contacts, only: [:new, :create]
  get '*path' => redirect('/404')
  
end
