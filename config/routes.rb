Rails.application.routes.draw do
  root "messages#index"
  resources :messages, only: :index do
    collection do
      # 検索結果の表示に詳細ページなどは必要ない
      get 'search'
    end
  end
  resources :posts, only: [:index, :new, :create]
  resources :users, only: :index
  resources :regions, only: :index
  
  get 'maps/index'
  # root to: 'maps#index'
  resources :maps, only: [:index]

end