Rails.application.routes.draw do

  #static_pages
  root 'static_pages#home'
  get  'help',    to: 'static_pages#help'
  get  'about',   to: 'static_pages#about'
  get  'contact', to: 'static_pages#contact'
  #users
  get  'signup', to: 'users#new'
  #get '/users/:id', to: 'users#show', as: 'user'
  resources :users
  #sessions
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #account_activation
  resources :account_activations, only: [:edit]
  #password_resets
  resources :password_resets,     only: [:new, :create, :edit, :update]
  #singers
  get 'singers', to: 'singers#index'
  get 'singers/:id', to: 'singers#show', as: 'singer'
  get 'singers/:singer_id', to: 'singers#back_to_singer', as: 'back_to_singer'
  #songs
  resources :songs, only: [:show], as: 'song'
  #search
  get 'search', to: 'search#search_results'
  #likes
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
