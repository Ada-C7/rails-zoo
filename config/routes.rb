Rails.application.routes.draw do
  # root "animals/index"

  # get "/animals/new", to: "animals#new"
  # post "animals", to: "animals#create"

  get "/animals/:id/edit", to: "animals#edit",  as:"edit_animal"
  patch "animals/:id", to: "animals#update"


  get "/animals", to: "animals#index"

  get "/animals/:id", to: "animals#show", as:"animal"





end
