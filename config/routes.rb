Twitter::Application.routes.draw do

  get "sessions/new"
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'tweets#index'
  resources :users
  resources :sessions
  resources :tweets, :except => [:edit]
end
