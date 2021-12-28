Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'armstrong#input'
  match 'armstrong/output', via: %I[get post]
  get 'armstrong/data'
  get '/signin', to: 'sessions#new'
  get '/signup', to: 'users#new'
end
