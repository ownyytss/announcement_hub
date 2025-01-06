Rails.application.routes.draw do
  # Devise routes for admin users
  devise_for :admin_users, ActiveAdmin::Devise.config

  # ActiveAdmin routes
  ActiveAdmin.routes(self)

  # Devise routes for regular users
  devise_for :users

  resources :users, only: [:index,:show]
  resources :posts

end
