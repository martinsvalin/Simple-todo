SimpleTodo::Application.routes.draw do
  root to: "tasks#index"
  resources :tasks, except: [:show]
  put '/tasks/:id/toggle' => "tasks#toggle", as: :toggle_task
 end
