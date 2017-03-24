Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'static#index'

get '/reservations', to: 'reservations#index'
get '/reservations/:id', to: 'reservations#show', as: 'reservation'

end
