Rails.application.routes.draw do
  root 'animals#index'
  #create
  get '/animals/new', to: 'animals#new', as: 'new_animal'
  post '/animals', to: 'animals#create'

  #read
  get '/animals', to: 'animals#index'
  get '/animals/:id', to: 'animals#show', as: 'animal'

  #update
  get '/animals/:id/edit', to: 'animals#edit', as: 'edit_animal'
  patch '/animals/:id', to: 'animals#patch'

  #destroy
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
