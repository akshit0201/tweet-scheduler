Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about-us" , to: "about#index" , as: :about
  get "password" , to: "password#edit" , as: :edit_password
  patch "password" , to: "password#update"
  get "sign-up" , to: "reg#new" , as: :sign_up
  post "sign-up", to: "reg#create"

  get "sign-in", to: "sessions#new" , as: :sign_in
  post "sign-in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "auth/twitter/callback" , to: "omniauths#twitter"

  get "reset", to: "reset#new"
  post "reset", to: "reset#create"

  get "reset/edit", to: "reset#edit" , as: :reset_edit
  patch "reset/edit", to: "reset#update"
  root to: "main#index"
end
