Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants
  resources :reservations

  resource :users, only: %i(create new show)
  resource :sessions, only: %i(create new destroy)
end
