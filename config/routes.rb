Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'
  get '/login', to: 'users#login'
  post '/login', to: 'users#logincreate'
  delete '/logout', to: 'users#destroy'
  resources :users, only: [:create, :show]
  resources :groups, only: [:index, :show, :new, :create]
  resources :transactions, only: [:index, :show, :new, :create], as: 'trns'
  root 'static_pages#home'
end

# ROUTES:
#      root GET     /                               users#login
#    signup GET     /signup(.:format)               users#new
#     users POST    /users(.:format)                users#create
#      user GET     /users/:id(.:format)            users#show
#    groups GET     /groups(.:format)               groups#index
#           POST    /groups(.:format)               groups#create
# new_group GET     /groups/new(.:format)           groups#new
#     group GET     /groups/:id(.:format)           groups#show
#      trns GET     /transactions(.:format)         transactions#index
#           POST    /transactions(.:format)         transactions#create
#   new_trn GET     /transactions/new(.:format)     transactions#new
#       trn GET     /transactions/:id(.:format)     transactions#show