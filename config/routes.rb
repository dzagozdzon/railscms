Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/show'
  get 'home/show'
  
  resources :pages, only: [:show]

  root 'home#show'
end
