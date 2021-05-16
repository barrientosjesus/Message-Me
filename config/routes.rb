Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'sessions#new'

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

end
