Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "/bookings/:id" => "bookings#show"
  post "/sessions" => "sessions#create"

  post "/user" => "users#create"
  get "/user/:id" => "users#show"
  get "/users" => "users#index"
  delete "/user/:id" => "users#destroy"
  patch "/user/:id" => "users#update"


  get "/nonprofits" => "nonprofits#index"
  post "/nonprofits" => "nonprofits#create"
  get "/nonprofits/:id" => "nonprofits#show"
  patch "/nonprofits/:id" => "nonprofits#update"
  delete "/nonprofits" => "nonprofits#destroy"


  get "/catagories" => "catagories#index"

end
