class AttractionsController < ApplicationController
  private

  def attract_params
    params.require(:attractions).permit(
      :name,
      :city,
      :tag,
      :cost,
      :rating,
      :comment,
      :address,
      :phone_number,
      state_id: []
    )
  end
end
