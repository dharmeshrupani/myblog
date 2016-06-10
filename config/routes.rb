Rails.application.routes.draw do


  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  root 'posts#index'

  resources :sessions
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"

  resources :authors
  get "sign_up" => "authors#new", :as => "sign_up"


end
