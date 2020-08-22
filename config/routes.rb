Rails.application.routes.draw do
  root to: 'pages#home'

  get '/valeurs', to: 'pages#valeurs', as: 'valeurs'
  get '/show_example', to: 'pages#show_example', as: 'show_example'

  # Contact
  get '/contact', to: 'messages#new', as: 'new_message'
  post '/contact', to: 'messages#create', as: 'create_message'

  resources :articles, only: [:index, :show]

  namespace :admin do
    resources :articles
  end
end
