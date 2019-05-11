Rails.application.routes.draw do
  root 'index#index'
  resources :galleries
  resources :publishers
  resources :magazines
  resources :authors
  resources :books
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  # login/session routes
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
