Rails.application.routes.draw do

  get '/auth/facebook/callback' => 'sessions#create'

  root 'home#index'
  get 'home/contact'
  get 'home/main'
  delete 'logout' => 'sessions#destroy'
  resources :goers
  resources :planners

  resources :planners, only: [:show, :index] do
    resources :trips, only: [:show, :index, :new, :edit]
  end

  resources :trips
  resources :users
  resources :categories
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
