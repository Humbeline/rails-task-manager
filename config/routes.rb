Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #INDEX -- SHOW ALL THE TASKS (READ ALL)
    get 'tasks', to: 'tasks#index'

 #ADD NEW TASK -- STEP 1- NEW (CREATE)
    get 'tasks/new', to: 'tasks#new', as: 'new_task'
  #STEP 2 - CREATE (CREATE)
    post 'tasks', to: 'tasks#create'

  #SHOW -- SHOW DETAILS OF ONE TASK (READ ONE)
    get 'tasks/:id', to: 'tasks#show', as: 'show_task'

  #EDIT TASKS -- STEP 1 EDIT -
    get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  #EDIT TASKS -- STEP 2 UPDATE
    patch 'tasks/:id', to: 'tasks#update', as: 'task'

  #DELETE
    delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task'
end
