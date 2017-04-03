Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

     root to: 'static#index'

     get '/conditions', to: 'static#conditions', as: 'conditions'
     get '/gifts', to: 'static#gifts', as: 'gifts'
     get '/blueprint', to: 'static#blueprint', as: 'blueprint'
     get '/travel', to: 'static#travel', as: 'travel'
     get '/rsvp', to: 'static#rsvp', as: 'rsvp'

     get '/reservations/new', to: 'reservations#new', as: 'new_reservation'
     post '/reservations', to: 'reservations#create'

     get '/reservations/tally', to: 'reservations#tally', as: 'tally_reservations'

     get '/reservations/:id/edit', to: 'reservations#edit', as: 'edit_reservation'
     patch '/reservations/:id', to: 'reservations#update'

     get '/reservations', to: 'reservations#index'
     get '/reservations/:id', to: 'reservations#show', as: 'reservation'

     delete '/reservations/:id', to: 'reservations#destroy', as: "delete_reservation"
end
