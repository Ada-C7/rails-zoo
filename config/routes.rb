Rails.application.routes.draw do
  get 'animals', to: 'animals#index'

  get 'animals/new', to: 'animals#new', as: 'new_animal'
  post 'animals', to: 'animals#create'

  get 'animals/:id', to: 'animals#show', as: 'animal'

  delete 'animals/:id', to: 'animals#destroy'
end
