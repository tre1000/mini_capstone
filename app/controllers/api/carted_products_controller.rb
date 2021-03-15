class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "In cart",
    )
    if @carted_product.save
      index()
    else
      render json: { error: carted_product.errors.full_messages }
    end
  end

  def index
    @carted_products = CartedProduct.where("user_id = ? AND status = ?", current_user.id, "In cart")
    render "index.json.jb"
  end
end
