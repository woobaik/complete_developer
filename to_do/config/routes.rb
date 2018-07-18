Rails.application.routes.draw do



  root to: 'tasks#index'
  #tasks
  resources :tasks
  get '/tasks/:id/complete/:completed', to: 'tasks#complete'

  #users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
