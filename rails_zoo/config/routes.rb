Rails.application.routes.draw do

  root 'animals#index'
  get 'animals/index'

  get 'animals/details'

  get 'animals/new'
  post 'animals' , to: "animals#create"

  post 'animals', to: 'animals#destroy'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
