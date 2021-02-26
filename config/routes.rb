Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/available_products" => "products#all_products_action"
    get "/available_products_query" => "products#product_by_id_query"
    get "/available_products/:id" => "products#product_by_id"
  end
end
