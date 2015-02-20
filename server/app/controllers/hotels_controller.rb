class HotelsController < ApplicationController
 def show
  @state = State.find params[:state_id]
  @hotel = Hotel.find params[:id]
  end
  private

  def index
    @state = State.find_by_slug(params[:state_id])
    @hotels = @state.hotels
    respond_to do |format|
      format.json { render json: @state.hotels.to_json }
    end
  end

  def create
    @state = State.find params[:state_id]
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
