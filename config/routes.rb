Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home/index'
  get 'home', to: "home#index"

  resources :contents
  # get 'contents', to: "contents#index"
  # get 'contents/new', to: "contents#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
