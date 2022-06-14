Rails.application.routes.draw do
  resources :tasks
  resources :notes
  resource :users, only: [:create]
  post "/login", to: "users#login"
end
