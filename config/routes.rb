Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "/bookings/:id" => "bookings#show"
  post "/sessions" => "sessions#create"

  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  get "/users" => "users#index"
  delete "/users/:id" => "users#destroy"
  patch "/users/:id" => "users#update"


  get "/nonprofits" => "nonprofits#index"
  post "/nonprofits" => "nonprofits#create"
  get "/nonprofits/:id" => "nonprofits#show"
  patch "/nonprofits/:id" => "nonprofits#update"
  delete "/nonprofits" => "nonprofits#destroy"


  get "/catagories" => "catagories#index"

end
