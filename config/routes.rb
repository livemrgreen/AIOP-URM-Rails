Urm::Application.routes.draw do
  resources :reservation_requests

  post '/signin', to: 'signin#create'

  resources :users

  resources :reservations

  resources :rooms

  resources :teachings

  resources :lessons

  resources :subjects

  resources :mods

  resources :lesson_types

  resources :groups

  resources :time_slots

  resources :characteristics

  resources :buildings

  root "welcome#index"
end
