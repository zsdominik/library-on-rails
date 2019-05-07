Rails.application.routes.draw do
  root 'index#index'
  resources :galleries
  resources :publishers
  resources :magazines
  resources :authors
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
