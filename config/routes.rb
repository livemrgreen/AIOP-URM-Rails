Urm::Application.routes.draw do
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

  resources :users, constraints: {format: :json}

  root "welcome#index"
end
