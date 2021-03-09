class Api::ProductsController < ApplicationController
  def index
    #ensures that user must be logged in to access data
    if current_user
      @products = Product.all
      render "index.json.jb"
    else
      render json: []
    end

    #enables ability to search through index via query
    if params[:search]
      @products = Product.where("name ILIKE ?", "%#{params[:search]}%")
    end
  end

  def show
    id = params[:id]
    @product = Product.find(id)
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      #image_url: params[:image_url],
      description: params[:description],
      stock: params[:stock],
    )
    #happy/sad path
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 406
    end
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    #@product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.stock = params[:stock] || @product.stock

    #happy/sad path
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 406
    end
  end

  def delete
    @product = Product.find(params[:id])
    @product.destroy
    render json: { message: "product successfully deleted" }
  end
end
