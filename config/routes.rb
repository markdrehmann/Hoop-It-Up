Rails.application.routes.draw do
  resources :games
  resources :rosters
  resources :courts
  resources :players

  get '/login', to: 'sessions#login'
  get '/logout', to: 'sessions#logout'
end
