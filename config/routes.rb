Rails.application.routes.draw do
  root 'welcome#home'
  resources :players
  resources :games
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
