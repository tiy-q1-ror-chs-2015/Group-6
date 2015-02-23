class HotelsController < ApplicationController
  before_action :set_state
  def show
    @hotel = Hotel.find params[:id]
  end

  def index
    @hotels = @state.hotels
  end

  def create
    @hotel = @state.hotels.create hotel_params
  end

  def update
    @hotel = Hotel.find params[:id]
    @hotel.update_attributes hotel_params
  end

  def set_state
    @state = State.find_by_slug(params[:state_id])
  end
  

private
  def hotel_params
    params.require(:hotel).permit(
      :name,
      :city,
      :tag,
      :cost,
      :comment,
      :rating,
      :address,
      :phone_number,
    )
  end
end
