Rails.application.routes.draw do
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/register',  to: 'labs#new'
  post '/register', to: 'labs#create'
  resources :labs
  resources :users
  resources :universities
end
