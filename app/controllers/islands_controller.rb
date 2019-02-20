class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @islands = policy_scope(Island)
    @islands = Island.where.not(latitude: nil, longitude: nil)
    @markers = @islands.map do |island|
      {
        lng: island.longitude,
        lat: island.latitude
        # infoWindow: render_to_string(partial: "infowindow", locals: { island: island })
      }
    end
  end

  def new
    @island = Island.new
    authorize @island
  end

  def show
    @island = Island.find(params[:id])
    authorize @island
    @booking = Booking.new
  end

  def create
    @island = Island.new(island_params)
    authorize @island
    @island.user = current_user
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  private

  def island_params
    params.require(:island).permit(:name, :location, :capacity, :price)
  end

end
