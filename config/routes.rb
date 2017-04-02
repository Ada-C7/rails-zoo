Rails.application.routes.draw do
  get 'animals', to: 'animals#index', as: 'animals'
end
