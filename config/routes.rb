Rails.application.routes.draw do
  root 'welcome#home'
  resources :games
  resources :rosters
  resources :courts
  resources :players

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'
end
