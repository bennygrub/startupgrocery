Rails.application.routes.draw do
  resources :product_submits
  resources :subscribers do
    member do
      get :subscribe
    end
  end 
  resources :favorites
  resources :vendors
  resources :categories
  resources :products do
    resources :images, :only => [:create, :destroy] # support #create and #destroy
  end
  devise_for :users
  resources :users, only: [:index, :show, :destroy]
  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
