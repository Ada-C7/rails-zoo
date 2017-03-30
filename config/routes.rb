Rails.application.routes.draw do
  root 'animals#index'

  get '/animals/new', to: 'animals#new', as: 'new_animal'
  post '/animals', to: 'animals#create'

  get '/animals', to: 'animals#index'
  get '/animals/:id', to: 'animals#show', as: 'animal'

  get '/animals/:id/edit', to: 'animals#edit', as: 'edit_animal'
  put '/animals/:id', to: 'animals#update'

  delete '/animals/:id', to: 'animals#destroy', as: 'delete_animal'
end
