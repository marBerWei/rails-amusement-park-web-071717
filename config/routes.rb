
Rails.application.routes.draw do

  root 'welcome#index'

  resources :users, only: [:new, :create, :show]
  resources :attractions, only: [:new, :create, :show, :index, :edit, :update]
  resources :rides, only: :create
  get '/signin', to: 'sessions#new', as: :login
  post '/signin', to: 'sessions#create'
  delete '/sessions/destroy', to: 'sessions#destroy'

end