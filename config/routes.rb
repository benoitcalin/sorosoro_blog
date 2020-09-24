Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/valeurs', to: 'pages#valeurs', as: 'valeurs'

  # Contact
  get '/contact', to: 'messages#new', as: 'new_message'
  post '/contact', to: 'messages#create', as: 'create_message'

  resources :articles, only: [:index, :show]
  resources :contacts, only: [:create]

  get '/admin', to: 'pages#admin', as: 'admin'
  namespace :admin do
    resources :articles
  end

  # Youtube to Trix
  resources :youtube, only: :show
end
