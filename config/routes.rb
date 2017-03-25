Rails.application.routes.draw do
  # View all animals
  get 'animals', to: 'animals#index', as: 'animals'
  # View one animal
  get 'animals/:id', to: 'animals#show', as: 'animal'

  #Create an animal
  get 'animals/new', to: 'animals#show', as:'new_animal'
  get 'animals', to: 'animals#create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
