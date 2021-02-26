class Api::ProductsController < ApplicationController
  def all_products_action
    @products = Product.all
    render "available_products.json.jb"
  end

  # def product_by_id_query
  #   id = params[:id]
  #   @product = Product.find_by(id: id)
  #   render "view_by_id.json.jb"
  # end

  def product_by_id
    id = params[:id]
    @product = Product.find(id)
    render "view_by_id.json.jb"
  end
end
