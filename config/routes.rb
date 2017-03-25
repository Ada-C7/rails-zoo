Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'static#index'

get '/reservations/new', to: 'reservations#new', as: 'add_reservation'
post '/reservations', to: 'reservations#create'

get '/reservations/:id/edit', to: 'reservations#edit', as: 'edit_reservation'
patch '/reservations/:id', to: 'reservations#update'

get '/reservations', to: 'reservations#index'
get '/reservations/:id', to: 'reservations#show', as: 'reservation'

end
