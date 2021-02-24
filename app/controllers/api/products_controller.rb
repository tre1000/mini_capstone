class Api::ProductsController < ApplicationController
  def available_products_action
    @products = Product.all
    render "available_products.json.jb"
  end
end
