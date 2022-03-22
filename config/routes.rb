Rails.application.routes.draw do

  get 'sessions/new'
  #static_pages
  root 'static_pages#home'
  get  'help',    to: 'static_pages#help'
  get  'about',   to: 'static_pages#about'
  get  'contact', to: 'static_pages#contact'
  #users
  get  'signup', to: 'users#new'
  resources :users
  #sessions
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #account_activation
  resources :account_activations, only: [:edit]
end
