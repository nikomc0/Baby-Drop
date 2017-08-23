Rails.application.routes.draw do
  resources :drop_offs
  root 'welcome#index'

  resources :profile
  resources :users, only: [:edit, :update]
  resources :calendar

  devise_for :users, controllers: { registrations: "registrations"}

end
