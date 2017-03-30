Rails.application.routes.draw do
  root 'welcome#index', as: 'welcome'
  get 'animals', to: 'animals#index', as: 'animals'
end
