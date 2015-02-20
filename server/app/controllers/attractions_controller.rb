class AttractionsController < ApplicationController
  
 def show
  @state = State.find params[:state_id]
  @attraction = Attraction.find params[:id]
  end
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
