class AttractionsController < ApplicationController
  before_action :set_state

  
  def show
    @attraction = Attraction.find params[:id]
  end

  def index
    @attractions = @state.attractions
    @jsonarray = ["Attractions", @state.attractions.as_json]
    respond_to do |format|
      format.json { render json: JSON.pretty_generate(@jsonarray) }
    end
  end

  def create
    @attraction = @state.attractions.new attraction_params
    if @attraction.save
      respond_to do |format|
        format.json { render json: @state.attractions.to_json }
      end
    else
      respond_to do |format|
        format.json { render json: @state.attractions.errors.full_messages, status: 422}
      end
    end
  end

  def update
    @attraction = Attraction.find params[:id]
    if @attraction.update_attributes attraction_params
      respond_to do |format|
        format.json { render json: @attraction.to_json }
      end
    else
      respond_to do |format|
        format.json { render json: @attraction.errors.full_messages, status: 422}
      end
    end
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
