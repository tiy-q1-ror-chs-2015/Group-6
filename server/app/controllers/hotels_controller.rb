class HotelsController < ApplicationController
  before_action :set_state
  def show
    @hotel = Hotel.find params[:id]
  end

  def index
    @hotels = @state.hotels
    @jsonarray = ["Hotels", @state.hotels.as_json]
    respond_to do |format|
      format.json { render json: JSON.pretty_generate(@jsonarray) }
    end
  end

  def create
    @hotel = @state.hotels.new hotel_params
    if @hotel.save
      respond_to do |format|
        format.json { render json: @state.hotels.to_json }
      end
    else
      respond_to do |format|
        format.json { render json: @state.hotels.errors.full_messages, status: 422}
      end
    end
  end

  def update
    @hotel = Hotel.find params[:id]
    if @hotel.update_attributes hotel_params
      respond_to do |format|
        format.json { render json: @hotel.to_json }
      end
    else
      respond_to do |format|
        format.json { render json: @hotel.errors.full_messages, status: 422}
      end
    end
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
