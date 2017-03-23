Rails.application.routes.draw do
  root to: 'animals#index'
  get 'animals/index', to: 'animals#index', as: 'animals'
  get 'animals/:id/show/', to: 'animals#show', as: 'animal'
  get 'animals/new', to: 'animals#new', as: 'new_animal'
  post 'animals/create', to: 'animals#create'
  get 'animals/:id/edit', to: 'animals#edit', as: 'edit_animal'
  patch 'animals/:id/update', to: 'animals#update'
  delete 'animals/:id/destroy', to: 'animals#destroy'
end
