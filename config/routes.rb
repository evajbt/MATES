Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :profiles do
    resources :user_games, only: [:new, :create, :edit, :update, :destroy]
    collection do
      get 'search', to: 'user_games#search', as: 'search'
    end
    resources :likes, only: [:create]
    resources :matches, only: [:show]
  end

  resources :conversations, only: [:index, :show] do
    resources :messages, only: [:create]
  end

  # For ActionCable
  mount ActionCable.server => '/cable'
end
