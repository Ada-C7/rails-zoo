Rails.application.routes.draw do

  get 'animals', to: 'animals#index', as: 'animals'
  get 'animals/new', to: 'animals#new', as: 'new_animal'
  post 'animals', to: 'animals#create'

  get 'animals/:id', to: 'animals#show', as: 'animal'
  get 'animals/:id/edit', to: 'animals#edit', as: 'edit_animal'
  patch 'animals/:id', to: 'animals#update'
  delete 'animals/:id', to: 'animals#destroy'

#these two lines were auto-written when routes.rb was created.  why?  was I supposed to use them?
    # get 'animals/index', to: 'animals#index', as: 'animals'
    # get 'animals/show', to: 'animals#index', as: 'animal'

end
