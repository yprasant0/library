Rails.application.routes.draw do
  get 'students/index'
  root 'homes#show'
  get 'homes/show', to: 'homes#show'
  resources :books
  resources :students, :except => [:edit, :show, :delete, :update, :destory]
  get 'students/assignment', to: 'students#assignment', :as => :assignments_new
  get 'students/:id/display', to: 'students#display', :as => :display
end
