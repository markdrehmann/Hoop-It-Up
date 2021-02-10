Rails.application.routes.draw do
  root 'welcome#home'
  resources :games
  resources :rosters
  resources :courts
  resources :players

  get '/login', to: 'sessions#login'
  get '/logout', to: 'sessions#logout'
end
