class ProductsController < ApplicationController
  before_action :set_user, only: %i[new create edit update destroy]
  before_action :set_product, only: %i[show edit update destroy]

  def index
    # @products = Product.all
    @products = policy_scope(Product)
  end

  def new
    @product = Product.new
    authorize @product
  end

  def show
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = @user
    if @product.save
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
    authorize @product
  end

  def edit
    authorize @product
  end

  def update
    authorize @product
    if @product.save
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @product
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :color, :size, :price, :brand, :images_url, :gender, :category_id, photos: [])
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
