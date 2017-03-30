Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders
  root 'welcome#index'
  get 'welcome/index'
  get 'welcome/about'
  get 'category/cases'
  get 'category/processor'
  get 'category/motherboard'
  get 'category/psu'
  get 'category/ram'
  get 'category/ssd'
  devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
