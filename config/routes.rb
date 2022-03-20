Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "sign_up",to: "registrations#new"
  post "sign_up", to: "registrations#create"
  get "home", to: "main#index"
  post "home", to:"main#index"

  get "sign_in",to: "sessions#new"
  post "sign_in", to: "sessions#create"


  get "food_item", to:"food#new"
  post "food_item", to: "food#create"

  get "search", to:"search#items"

  
end
