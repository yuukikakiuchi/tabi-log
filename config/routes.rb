Rails.application.routes.draw do
  get 'items/index'
  root "messages#index"
  resources :messages, only: :index do
    collection do
      # 検索結果の表示に詳細ページなどは必要ない
      get 'search'
    end
  end
  resources :posts, only: [:index, :new, :create, :get] do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
    end
  end
  resources :users, only: :index
  resources :regions, only: :index

  get 'maps/index'
  # root to: 'maps#index'
  resources :maps, only: [:index]
end