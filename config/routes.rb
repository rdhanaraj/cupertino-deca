Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  get '/dashboard', controller: 'pages', action: 'dashboard'
  get '/resources', controller: 'pages', action: 'resources'

end
