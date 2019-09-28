Rails.application.routes.draw do

  root 'homes#show'
  get 'homes/show', to: 'homes#show'
  resources :books
  resources :students, :except => [:edit, :show, :delete, :update, :destroy]
  get 'students/:id2/assignment', to: 'students#assignment', :as => :assignments_new
  get 'students/:id/display', to: 'students#display', :as => :display
end
