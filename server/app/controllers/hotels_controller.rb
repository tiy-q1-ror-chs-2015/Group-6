class HotelsController < ApplicationController
 def show
  @state = State.find params[:state_id]
  @hotel = Hotel.find params[:id]
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
