Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/kitchens/:id/edit', to: 'kitchens#edit'
  put '/kitchens/:id', to: 'kitchens#update'
  get '/kitchens/:id', to: 'kitchens#show'

  get '/kitchens', to: 'kitchens#index'
  get '/', to: 'kitchens#cities'
  post '/kitchens', to: 'kitchens#create'

  post '/signin', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'

  post '/users', to: 'users#create'



end
