Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #CRUD paths
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "products/:id" => "products#delete"
    #-----------------------------------------
    #Authentication paths
    post "/users" => "users#create"
    post "sessions/" => "sessions#create"
    #-----------------------------------------
    #Order paths
    post "orders" => "orders#create"
    get "orders" => "orders#index"
  end
end
