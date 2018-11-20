Rails.application.routes.draw do
  get "tasks/new", to: "tasks#new"
  post 'tasks', to: "tasks#create"
  # resources :tasks, only: [:inex, :show]
  get 'tasks/:id', to: "tasks#show", as: :task
  get 'all_tasks', to: 'tasks#index', as: :all_tasks

  get    "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch  "tasks/:id",      to: "tasks#update"

  delete "tasks/:id",      to: "tasks#destroy", as: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
