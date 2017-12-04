Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/kitchens/:id/edit', to: 'kitchens#edit'
  put '/kitchens/:id', to: 'kitchens#update'
  get '/kitchens/:id', to: 'kitchens#show'

  get '/kitchens', to: 'kitchens#index'
  get '/', to: 'kitchens#cities'
  post '/kitchens', to: 'kitchens#create'
  delete '/kitchens/:kitchenid', to: 'kitchens#destroy'
  put '/kitchens/:kitchenid', to: 'kitchens#update'


  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/me', to: 'sessions#show'

  post '/users', to: 'users#create'

  get '/reservations/:userid', to: 'reservations#index'
  post '/reservations', to: 'reservations#create'
  delete '/reservations/:reservationid', to: 'reservations#destroy'

  post '/kitchen_reviews', to: 'kitchen_reviews#create'



end
