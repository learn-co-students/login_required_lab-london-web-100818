Rails.application.routes.draw do
  root 'application#hello'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/login' => 'sessions#destroy'

  get '/shhhh' => 'secrets#show', as: 'secret'



end
