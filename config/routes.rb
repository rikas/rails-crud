Rails.application.routes.draw do
  root to: 'restaurants#index'

  # Generates the 7 CRUD actions
  # resources :restaurant
  # resources :restaurant, except: %i[destroy update edit create new]
  resources :restaurant, only: %i[index show]

  # Create - 2 routes
  # Shows the create form
  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurants#create'

  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Update - 2 routes
  # get '/restaurants/:id/edit', to: 'restaurants#edit'
  # patch '/restaurants/:id', to: 'restaurants#update'

  # DESTROY the restaurant
  # delete '/restaurants/:id', to: 'restaurants#destroy', as: :delete_restaurant
end
