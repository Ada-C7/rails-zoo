Rails.application.routes.draw do
  # View all animals
  get 'animals', to: 'animals#index', as: 'animals'

  #Create an animal
  get 'animals/new', to: 'animals#new', as:'new_animal'
  post 'animals', to: 'animals#create'

  # View one animal, MUST be after new & create routes
  get 'animals/:id', to: 'animals#show', as: 'animal'

  #Edit an Animal
  get 'animals/:id/edit', to: 'animals#edit', as: 'edit_animal'
  patch 'animals/:id', to: 'animals#update'

  #Delete an Animal
  delete 'animals/:id', to: 'animals#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
