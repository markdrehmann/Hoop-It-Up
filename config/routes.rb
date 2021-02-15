Rails.application.routes.draw do
  root 'welcome#home'
  resources :games
  resources :rosters
  resources :courts do
    resources :games, only: [:new, :index]
  end
  resources :players

  get "/auth/github", as: "github_login"
  match '/auth/github/callback', to: 'sessions#create', via: [:get, :post]
  # get '/auth/github/callback' => 'sessions#create'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'

  get '/leave/:id', to: 'rosters#leave'
end
