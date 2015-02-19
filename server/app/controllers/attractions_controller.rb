class AttractionsController < ApplicationController

  def index
    @state = State.find params[:state_id]
    @attractions = @state.attractions
    respond_to do |format|
      format.json { render json: @state.attractions.to_json }
    end
  end

  def create
    @state = State.find params[:state_id]
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
