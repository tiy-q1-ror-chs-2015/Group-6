class StatesController < ApplicationController
  def index
    @states = State.all
    @jsonarray = [@states.as_json]
    respond_to do |format|
      format.json { render json: JSON.pretty_generate(@jsonarray) }
    end
  end

  def show
    @state = State.find_by_slug(params[:id])
    @jsonarray = [@state.as_json, 
      "Hotels", 
      @state.hotels.as_json, 
      "Restaurants", 
      @state.restaurants.as_json, "Attractions", 
      @state.attractions.as_json]
    respond_to do |format|
      format.json { render json: JSON.pretty_generate(@jsonarray)}
    end
  end

  private

  def state_params
    params.require(:state).permit(
      :name,
      :slug,
      )
  end
end
