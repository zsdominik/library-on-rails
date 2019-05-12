Rails.application.routes.draw do
  get 'read_content/read'
  get 'previous_rentals/list'
  delete 'previous_rentals/destroy'
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
  post 'rent', to: 'books#rent_book', as: 'rent'
  post 'rent_magazine', to: 'magazines#rent_magazine', as: 'rent_magazine'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
