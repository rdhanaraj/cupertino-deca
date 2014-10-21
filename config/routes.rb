Rails.application.routes.draw do
  resources :events

  devise_for :users
  root 'pages#home'

  get '/data', controller: 'pages', action: 'data'
  get '/naga', controller: 'pages', action: 'members'

  get '/attend/:event_id', controller: 'events', action: 'attend'
end
