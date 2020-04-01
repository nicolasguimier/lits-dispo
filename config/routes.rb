Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/submit-code', to:'codes#submit'

  resources :hospitals, only: [:index]
end
