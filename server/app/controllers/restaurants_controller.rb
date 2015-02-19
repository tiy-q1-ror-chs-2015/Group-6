class RestaurantsController < ApplicationController


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
