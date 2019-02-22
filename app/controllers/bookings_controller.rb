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

    @date_start = @booking.start_date.strftime("%Y-%m-%d")
    @date_end = @booking.ending_date.strftime("%Y-%m-%d")
    found = false
    @all_bookings = Booking.all
    @all_bookings.each do |booking|
      arrival_date = booking.start_date.strftime("%Y-%m-%d")
      leave_date = booking.ending_date.strftime("%Y-%m-%d")
      if @date_start.between?(arrival_date, leave_date) || @date_end.between?(arrival_date, leave_date)
        if booking.island_id == @booking.island_id
          found = true
        end
      end
    end

      # redirect_to islands_path
    respond_to do |format|
      if found == true
        flash[:alert] = 'not booking'
        format.html { redirect_to islands_path, :alert => 'Island unavailable for these dates, why not book another one ?' }
      else
        @booking.save
        flash[:alert] = 'booking'
        format.html { redirect_to bookings_path, :alert => 'Booking sent! Prepare your trip now' }
      end
    end
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
