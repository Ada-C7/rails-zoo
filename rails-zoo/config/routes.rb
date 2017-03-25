Rails.application.routes.draw do

  root to: 'animals#index'

  get 'animals', to: 'animals#index', as: 'animals'

  get 'animals/:id', to: 'animals#show', as: 'animal'
  # get 'animals/new', to: 'animals#new', as: 'new_animal'
  # post 'animals', to: 'animals#create'
  # ßß
  # get 'animals/:id', to: 'animals#show', as: 'animal'
  # get 'animals/:id/edit', to: 'animals#edit', as: 'edit_animal'
  # delete 'animals/:id/', to: 'animals#destroy'
  # patch 'animals/:id/', to: 'animals#update'

  patch 'animals/:id/completed', to: 'animals#completed', as:'completed_animal'
end
