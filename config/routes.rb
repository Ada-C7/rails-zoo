Rails.application.routes.draw do
  root 'welcome#index', as: 'welcome'
  get 'animals', to: 'animals#index', as: 'animals'

  get 'animals/new', to: 'animals#new', as: 'new_animal'
  post 'animals', to: 'animals#create'

  get 'animals/:id', to: 'animals#show', as: 'animal'

end
