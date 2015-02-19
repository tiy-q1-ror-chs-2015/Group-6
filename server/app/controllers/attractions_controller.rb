class AttractionsController < ApplicationController
  private

  def attraction_params
    params.require(:attraction).permit(
      :name,
      :city,
      :tag,
      :cost,
      :rating,
      :comment,
      :address,
      :phone_number,
    )
  end
end
