Rails.application.routes.draw do
  resources :events

  devise_for :users
  root 'pages#home'

  get '/data', controller: 'pages', action: 'data'
  get '/attend/:event_id', controller: 'events', action: 'attend'
end
