Rails.application.routes.draw do
  resources :vendors
  resources :categories
  resources :products
  devise_for :users
  resources :users, only: [:index, :show, :destroy]
  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
