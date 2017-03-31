Rails.application.routes.draw do
  get 'animals', to: 'animals#index', as: 'animals'
  get 'animals/:id', to: 'animals#show', as: 'animal'

  get 'animals/new', to: 'animals#new', as: 'new_animal'
  post 'animals', to: 'animals#create'

  get 'animals/:id/edit', to: 'animals#edit', as: 'edit_animal'

  post 'animals/:id/edit', to: 'animals#edit'
  patch 'animals/:id', to: 'animals#update'
  delete 'animals/:id', to: 'animals#delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
