Urm::Application.routes.draw do
  resources :users, constraints: {format: :json}

  root "welcome#index"
end
