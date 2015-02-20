class RestaurantsController < ApplicationController
  def show
  @state = State.find params[:state_id]
  @restaurant = Restaurant.find params[:id]
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(
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
