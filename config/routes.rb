Rails.application.routes.draw do
  get 'animals/index'

  get 'animals/create'

  get 'animals/new'

  get 'animals/edit'

  get 'animals/show'

  get 'animals/update'

  get 'animals/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :animals

  root to: 'animals#index'
end
