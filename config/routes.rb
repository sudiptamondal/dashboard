Rails.application.routes.draw do
  get 'static/home'
  devise_for :users
  resources :notes
  resources :tweets
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
