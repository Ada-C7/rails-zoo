Rails.application.routes.draw do
  root 'animals#index'

  get '/animals', to: 'animals#index'
  get '/animals/:id', to: 'animals#show', as: 'animal'
  
end
