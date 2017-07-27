Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants
  resource :reservations, only: %i(new create destroy)

  resource :users, only: %i(create new)
  resource :sessions, only: %i(create new destroy)
end
