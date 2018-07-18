Rails.application.routes.draw do

  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  root to: 'tasks#index'
  resources :tasks

  get '/tasks/:id/complete/:completed', to: 'tasks#complete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
