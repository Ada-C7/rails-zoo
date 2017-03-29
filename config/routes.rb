Rails.application.routes.draw do
  get 'animals', to: 'animals#index'
  get 'animals/:id', to: 'animals#show', as: 'animal'
end
