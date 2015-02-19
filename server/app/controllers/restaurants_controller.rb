class RestaurantsController < ApplicationController


  private
  def rest_params
    params.require(:restaurant).permit(
      :name,
      :city,
      :tag,
      :cost,
      :comment,
      :rating,
      :address,
      :phone_number,
      state_id: []
    )
  end  
end
