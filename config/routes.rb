Rails.application.routes.draw do

  # Paginas estaticas
  get '/home', to: 'pages#home'
  get '/terms', to: 'pages#terms'
  root "pages#home"
end
