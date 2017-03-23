Rails.application.routes.draw do
  root to: 'animals#index'
  get '/animals', to: 'animals#index', as: 'animals'
  get '/animals/:id', to: 'animals#show', as: 'animal'
  get '/animals/new', to: 'animals#new'
  post '/animals', to: 'animals#create'
  get '/animals/:id/edit', to: 'animals#edit', as: 'edit_animal'
  patch '/animals/:id', to: 'animals#update'
  delete '/animals/:id', to: 'animals#destroy'
end
