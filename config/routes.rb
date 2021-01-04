Rails.application.routes.draw do
  resources :projects
  resources :tasks
  # resources :users
  # get 'home/index'
  root 'home#index'
  devise_for :users
  resources :customers
end
