Rails.application.routes.draw do



  root to: 'tasks#index'
  #tasks
  resources :tasks
  get '/tasks/:id/complete/:completed', to: 'tasks#complete'

  #users
  resources :users, only: [:index, :new, :create]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :sessions, only: [:new, :create, :destroy]
    get '/login', to: 'sessions#new'
    get '/logout', to: 'sessions#destroy'






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
