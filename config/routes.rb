Rails.application.routes.draw do
  resources :weather_informations, only: :index
  resources :locations, only: :create
end
