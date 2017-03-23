Rails.application.routes.draw do
  get 'animals/index'

  get 'animals/show'

  get 'animals/edit'

  get 'animals/create'

  get 'animals/new'

  get 'animals/destroy'

  get 'animals/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
