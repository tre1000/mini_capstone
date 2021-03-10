class Api::OrdersController < ApplicationController
  def create
    if current_user
      @order = Order.new(
        quantity: params[:quantity],
        product_id: params[:product_id],
        user_id: current_user.id,
      )
      @order.save
      render "show.json.jb"
    else
      render json: { error: "You must be logged in to do that." }
    end
  end

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end
end
