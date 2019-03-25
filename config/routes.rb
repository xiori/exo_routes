Rails.application.routes.draw do
  devise_for :users
  resources :objets
  resources :articles
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/home'
  get 'pages/contact'
  get 'pages/about'
  root 'pages#home'

  
end
