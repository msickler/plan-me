Rails.application.routes.draw do

  get   '/login', :to => 'sessions#new', :as => :login


  get '/auth/facebook/callback' => 'sessions#create'


  root 'home#index'
  get 'home/contact'
  get 'home/main'
  delete 'logout' => 'sessions#destroy'
  resources :goers
  resources :planners do
    resources :trips, only: [:show, :index]
  end

  resources :trips
  resources :users
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
