class BookingsController < ApplicationController
  before_action :set_user, only: %i[new create edit update destroy]
  before_action :set_product, only: %i[new create show edit update destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = @user.id
    @booking.product_id = @product.id
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
    authorize @booking
  end

  def edit
    authorize @booking
  end

  def update
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to products_path
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :finish_date)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_user
    @user = current_user
  end
end
