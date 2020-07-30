Rails.application.routes.draw do
  root to: 'pages#home'

  get '/valeurs', to: 'pages#valeurs', as: 'valeurs'
  get '/contact', to: 'pages#contact', as: 'contact'

  resources :articles, only: [:index, :show]

  namespace :admin do
    resources :articles
  end
end
