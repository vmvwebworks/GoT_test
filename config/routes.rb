Rails.application.routes.draw do
  resources :houses
  get 'importer/form'
  post 'importer/upload'

  resources :characters

  root to: 'home#index'
end
