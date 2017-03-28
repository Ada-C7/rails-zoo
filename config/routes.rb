Rails.application.routes.draw do

  # get 'animals/index', to: 'animals#index', as: 'animals'

  get 'animals', to: 'animals#index', as: 'animals'

  # get 'animals/show', to: 'animals#index', as: 'animal'

  get 'animals/:id', to: 'animals#show', as: 'animal'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
