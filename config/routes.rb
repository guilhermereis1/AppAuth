Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  post '/auth_login', to: 'sessions#create'
  delete '/auth_logout', to: 'sessions#destroy'
  get '/auth_logged_in', to: 'sessions#is_logged_in?'
  
  resources :users, only: [:create, :show, :index]
end
