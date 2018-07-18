Rails.application.routes.draw do



  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root to: 'tasks#index'
  #tasks
  resources :tasks
  get '/tasks/:id/complete/:completed', to: 'tasks#complete'

  #users
  resources :users, except:[:index, :new, :create]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'







  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
