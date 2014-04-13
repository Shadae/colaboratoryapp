Colaboratory::Application.routes.draw do

  root 'welcome#index'
  get "users/index"
  get "users/show"
  get "users/update"

  get "profile/:id", to: "users#user_profile", as: :user_profile

  # get "/auth/:provider",          to: "sessions#create"
  get "/auth/:provider/callback", to: "sessions#create"

  get "/signout",                 to: "sessions#signout", as: :sign_out


  # resources :contents
  resources :users
  resources :contents
end
