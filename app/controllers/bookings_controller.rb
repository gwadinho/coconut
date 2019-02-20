class BookingsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: [ :index ]

  def index
    @user = current_user
    # authorize @user
    # # @user.bookings = policy_scope(Booking)
    # # @user.bookings = policy_scope(@user)
    # # @bookings = policy_scope(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  # def new
  #   @island = Island.find(params[:island_id])
  #   @booking = Booking.new
  # end

  def create
    @island = Island.find(params[:island_id])
    @booking = Booking.new(bookings_params)
    authorize @booking
    @booking.island = @island
    @booking.user = current_user
    @booking.total_price = (@booking.ending_date - @booking.start_date)*@island.price
    if @booking.save
      redirect_to bookings_path
    else
      render 'islands/show'
    end
    # Unless @restaurant.valid?, #save will return false,
    # and @restaurant is not persisted.
    # TODO: present the form again with error messages.

  end

  def destroy

  end

  def dashboard

  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :ending_date)
  end

end
