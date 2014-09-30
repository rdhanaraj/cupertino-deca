Rails.application.routes.draw do
  resources :events

  devise_for :users
  root 'pages#home'

  get '/data', controller: 'pages', action: 'data'

end
