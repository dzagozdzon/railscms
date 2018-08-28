Rails.application.routes.draw do
  get 'pages/show'
  get 'home/show'
  
  resources :pages, only: [:show]

  root 'home#show'
end
