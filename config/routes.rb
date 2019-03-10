Rails.application.routes.draw do
  get  '/signup',       to: 'users#new'
  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy'
  get  '/register',     to: 'labs#new'
  get 'users/:id/edit', to: 'users#edit'
  patch 'users/:id/UserEdit',    to: 'users#update'
  resources :labs
  resources :users
  resources :universities
end
