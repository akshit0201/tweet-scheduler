Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about-us" , to: "about#index" , as: :about
  get "sign-up" , to: "reg#new" , as: :sign_up
  post "sign-up", to: "reg#create"
  root to: "main#index"
end
