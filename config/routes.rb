Rails.application.routes.draw do

  get '/animals/new', to: 'animals#new', as: 'new_animal'

  post '/animals', to: 'animals#create'

  get 'animals/index'

  get '/animals', to: 'animals#index'

  get '/animals/:id', to: 'animals#show', as: 'each_animal'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
