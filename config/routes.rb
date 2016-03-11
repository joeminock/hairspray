Rails.application.routes.draw do
  
  root 'pages#home'
  
  devise_for :users

  resources :users, only: [:show]
  resources :stylists
  resources :photos

  resources :stylist do
    resources :appointments, only: [:create]
  end

  get '/preload' => 'appointments#preload'
  get '/preview' => 'appointments#preview'
end
