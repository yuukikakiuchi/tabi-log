Rails.application.routes.draw do
  resources :messages, only: :index
  resources :posts, only: :index
  resources :users, only: :index
  # get 'messages/index'
  root "messages#index"
  # get 'posts/index'
end