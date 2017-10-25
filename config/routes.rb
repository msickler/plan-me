Rails.application.routes.draw do

  get '/auth/facebook/callback' => 'sessions#create'

  root 'home#index'
  get 'home/contact'
  get 'home/main'
  get 'home/sample'
  delete 'logout' => 'sessions#destroy'
  resources :trips
  resources :users
  resources :categories
  resources :sessions

  resources :users, only: [:index] do
    resources :trips, only: [:new, :edit]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
