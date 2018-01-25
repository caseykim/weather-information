Rails.application.routes.draw do
  root to: 'weather_informations#index'

  resources :weather_informations, only: :index
  resources :locations, only: :create
end
