Rails.application.routes.draw do
  root 'application#hello'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  get '/show', to: 'secrets#show', as: 'secret'
end
