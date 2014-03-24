class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
  
  def create
    @product = Product.new(params.require(:product).permit(:name, :price, :image, :avatar, :description))
    if @product.save
      render "show"
    else

    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: "index"
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update(params.require(:product).permit(:name, :price, :image, :avatar, :description))
      render "show"
    else
      
    end
  end
end
