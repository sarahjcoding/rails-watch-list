Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
end

# get "tasks", to: "tasks#index"
#   post "tasks", to: "tasks#create"
#   get "tasks/new", to: "tasks#new", as: :new_task
#   get "tasks/:id", to: "tasks#show", as: :task
#   get "tasks/:id/edit", to: "tasks#edit", as: :edit
#   patch "tasks/:id", to: "tasks#update"
#   delete "tasks/:id", to: "tasks#destroy"
# end

# root to: "restaurants#index"
#   resources :restaurants, only: [:index, :show, :new, :create] do
#     resources :reviews, only: [:create]
#   end
# end
