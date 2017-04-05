Rails.application.routes.draw do
  root 'animals#index'

  get '/animals/new', to: 'animals#new', as: 'new_animal'

  post '/animals', to: 'animals#create'

  # get 'animals/index'

  get '/animals', to: 'animals#index'

  get '/animals/:id', to: 'animals#show', as: 'each_animal'

  delete '/animals/:id', to: 'animals#destroy', as: 'delete_animal'
end
