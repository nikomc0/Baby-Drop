Rails.application.routes.draw do
  root 'welcome#index'

  resources :profile
  resources :users, only: [:edit, :update]

  devise_for :users

end
