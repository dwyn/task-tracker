Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :tasks
  # resources :users
  # get 'home/index'
  root 'home#index'
  resources :customers
end
