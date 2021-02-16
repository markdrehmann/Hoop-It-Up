Rails.application.routes.draw do
  root 'welcome#home'
  # resources :players
  resources :players, only: [:new, :create, :show]
  # resources :games
  resources :games, only: [:new, :create, :index, :show]
  # resources :rosters
  resources :rosters, only: [:show, :edit]
  resources :courts do
    resources :games, only: [:new, :index]
  end

  # match '/auth/github/callback', to: 'sessions#create', via: [:get, :post]
  get '/auth/github/callback' => 'sessions#create'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'

  get '/leave/:id', to: 'rosters#leave'
end
