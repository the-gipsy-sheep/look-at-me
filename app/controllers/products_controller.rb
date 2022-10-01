class ProductsController < ApplicationController
  before_action :set_user, only: %i[new create edit update destroy]
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
  end

  def create
    @product = Product.new(product_params)
    @product.user = @user
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @product.destroy
    redirect_to product_path(@product)
  end

  private

  def product_params
    params.require(:product).permit(:description, :color, :size, :price, :brand, :images_url, :gender, :category_id, :photos)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
