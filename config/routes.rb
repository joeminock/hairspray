Rails.application.routes.draw do
  
  root 'pages#home'
  
  devise_for :users

  resources :users, only: [:show]
  resources :stylists
  resources :photos

  resources :stylist do
    resources :appointments, only: [:create]
  end

  #appointments Data
  get '/preload' => 'appointments#preload'
  get '/preview' => 'appointments#preview'
  
  #Appointments Views
  get '/my_appointments' =>'appointments#my_appointments'
  get '/client_appointments' =>'appointments#client_appointments'

  #Search
  get '/search' => 'pages#search'
 end
