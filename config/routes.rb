Rails.application.routes.draw do
  resources :user_stocks, only: :create
  get 'search_stock', to: 'stocks#search'
  get 'my_portfolio', to: 'users#my_portfolio'
  devise_for :users
  root 'welcome#index'
end
