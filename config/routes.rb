Rails.application.routes.draw do
  root "animals#index"

  get "/animals", to: "animals#index"
  get "/animals/:id", to: "animals#show", as: "animal"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
