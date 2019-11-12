Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # .all models
  get 'tasks', to: 'tasks#index'
  # create new model
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # update new model
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  # display single model
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # destroy existing model
  delete 'tasks/:id', to: 'tasks#destroy'
end
