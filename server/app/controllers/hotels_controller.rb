class HotelsController < ApplicationController

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
      state_id: []
    )
  end
end
