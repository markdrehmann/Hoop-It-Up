Rails.application.routes.draw do
  root 'welcome#home'
  resources :players, only: [:new, :create, :show]
  resources :games, only: [:new, :create, :index, :show]
  resources :rosters, only: [:show, :edit]
  resources :courts do
    resources :games, only: [:new, :index]
  end

  get '/auth/github/callback' => 'sessions#create'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'

  get '/leave/:id', to: 'rosters#leave'
end
