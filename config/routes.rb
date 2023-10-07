Rails.application.routes.draw do
  devise_for :users
  # Contacts
  resources :contacts, only: %i[new create]

  # Paginas estaticas
  get '/home', to: 'pages#home'
  get '/terms', to: 'pages#terms'
  root "pages#home"
end
