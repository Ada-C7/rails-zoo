Rails.application.routes.draw do
  # View all animals
  get 'animals', to: 'animals#index', as: 'animals'

  #Create an animal
  get 'animals/new', to: 'animals#new', as:'new_animal'
  post 'animals', to: 'animals#create'

  # View one animal
  get 'animals/:id', to: 'animals#show', as: 'animal'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
