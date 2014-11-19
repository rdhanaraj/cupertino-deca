Rails.application.routes.draw do
  get 'resource/title'

  get 'resource/link'

  get 'resource/description'

  resources :events

  devise_for :users
  root 'pages#home'

  get '/data', controller: 'pages', action: 'data'
  get '/naga', controller: 'pages', action: 'members'
  get '/resources', controller: 'pages', action: 'resources'

  get '/attend/:event_id', controller: 'events', action: 'attend'
end
