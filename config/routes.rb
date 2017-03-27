Rails.application.routes.draw do
  root 'animals#index'

  get '/animals', to: 'animals#index'

  get 'animals/new', to: 'animals#new', as: 'new_animal'

  get 'animals/:id', to: 'animals#show', as: 'animal'

  get 'animals/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
