Rps::Application.routes.draw do
  resources :games

  root 'games#index'
  post '/throw/', to: 'games#throw', as: 'throw'

end
