Rails.application.routes.draw do


  get '/animals/new', to: 'animals#new', as: 'new_animal'
  post '/animals', to: 'animals#create'

get '/animals', to: 'animals#index'
get '/animals/:id', to: 'animals#show', as: 'animal'





  # get '/animals/edit/:id', to: 'animals#edit', as: 'edit_animal'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
