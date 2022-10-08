class BookingsController < ApplicationController
  before_action :set_user, only: %i[new create edit update destroy]
  before_action :set_product, only: %i[new create show edit update destroy]
  before_action :set_booking, only: %i[edit update destroy]

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
    @booking.status = "pendiente"
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
    @booking.update(status: params[:status]) if params[:status].present?
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
    authorize @booking
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
    authorize @booking
    # el authorize tiene un problema entre el booking y el product
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :finish_date)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
