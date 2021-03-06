Auth::Application.routes.draw do

  root to: "welcome#index"

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get "welcome/index"
  resources :users
  resources :sessions

end
