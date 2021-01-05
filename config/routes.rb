Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :tasks do 
    resources :tasks_logs
  end
  # resources :users
  # get 'home/index'
  root 'home#index'
  resources :customers
end
