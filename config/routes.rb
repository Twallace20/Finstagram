Rails.application.routes.draw do


  devise_for :users, controllers: { sessions: 'users/sessions'}
  devise_for :accounts
  
  get "/dashboard" => "user#index"

  resources :posts, only: [:new,:create,:show]

  root to: 'public#homepage'
end
