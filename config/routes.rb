Rails.application.routes.draw do
  root "messages#index"
  resources :messages, only: :index
  resources :posts, only: [:index, :new, :create]
  resources :users, only: :index
  
end