Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'conditions', to: 'pages#condition'
  get 'mentions-legales', to: 'pages#mentions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/submit-code', to:'codes#submit'

  resources :hospitals, only: [:index, :new, :create] do
  	resources :free_beds, only: [:new, :create]
  end

  resources "contacts", only: [:new, :create]
end
