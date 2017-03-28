Rails.application.routes.draw do
  # get 'animals/index'

get "/animals", to: "animals#index", as: "animals"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/animals/:id", to: "animals#show", as: "animal"

end
