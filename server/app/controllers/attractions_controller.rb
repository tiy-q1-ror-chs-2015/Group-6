class AttractionsController < ApplicationController
  before_action :set_state

  
  def show
    @attraction = Attraction.find params[:id]
  end

  def index
    @attractions = @state.attractions
  end

  def create
    @attraction = @state.attractions.create attraction_params
  end

  def update
    @attraction = Attraction.find params[:id]
    @attraction.update_attributes attraction_params
  end

  def set_state
    @state = State.find_by_slug(params[:state_id])
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
