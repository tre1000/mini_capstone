class Api::OrdersController < ApplicationController
  def create
    if current_user
      @order = Order.new(
        quantity: params[:quantity],
        product_id: params[:id],
        user_id: current_user.id,
      )
      @order.save
      render "show.json.jb"
    else
      render json: { error: "You must be logged in to do that." }
    end
  end
end
