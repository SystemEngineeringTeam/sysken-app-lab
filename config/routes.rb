Rails.application.routes.draw do
  get  '/signup',       to: 'users#new'
  post '/signup',       to: 'users#create'
  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy'
  get  '/register',     to: 'labs#new'
  get 'users/:id/edit', to: 'users#edit'
  post '/register',     to: 'labs#create'
  patch 'users/:id/UserEdit',    to: 'users#update'

  resources :labs
  resources :users
  resources :universities
end
