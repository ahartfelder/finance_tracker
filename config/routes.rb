Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friend', to: 'users#search'
  resources :users, only: :show
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]
end
