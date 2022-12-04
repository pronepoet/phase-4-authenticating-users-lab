Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  resource :users, only: [:show]
  post '/login', to: 'sessions#create'
  get '/me', to: 'users#show'
  delete '/logout', to: "sessions#destroy"
  #resources :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
