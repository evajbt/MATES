Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :profiles do
    resources :user_games, only: [:new, :create, :edit, :update, :destroy]
    collection do
      get 'search', to: 'user_games#search', as: 'search'
    end
    resources :likes, only: [:create]
    resources :matches, only: [:show]
  end
end
