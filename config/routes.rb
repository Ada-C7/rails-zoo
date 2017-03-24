Rails.application.routes.draw do
  root "animals#index"

  get "/animals", to: "animals#index"

  get "/animals/new", to: "animals#new", as: "new_animal" # order matters!
  get "/animals/:id", to: "animals#show", as: "animal"

  post "/animals", to: "animals#create"

end
