Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  get 'home/contact'

  get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
