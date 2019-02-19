class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @islands = Island.all
  end

  def new
    @island = Island.new
  end

  def show
    @island = Island.find(params[:id])
    @booking = Booking.new
  end

  def create
    @island = Island.new(island_params)
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
