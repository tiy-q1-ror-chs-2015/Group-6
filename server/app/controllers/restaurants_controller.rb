class RestaurantsController < ApplicationController
  before_action :set_state, except: [:update]
  def show
    @restaurant = Restaurant.find params[:id]
  end

  def index
    @restaurants = @state.restaurants
    @jsonarray = ["Restaurants", @state.restaurants.as_json]
    respond_to do |format|
      format.json { render json: JSON.pretty_generate(@jsonarray)}
    end
  end

  def create
    @restaurant = @state.restaurants.new restaurant_params
    if @restaurant.save
      respond_to do |format|
        format.json { render json: @state.restaurants.to_json }
      end
    else
      respond_to do |format|
        format.json { render json: @state.restaurants.errors.full_messages, status: 422}
      end
    end
  end

  def update
    @restaurant = Restaurant.find params[:id]
    if @restaurant.update_attributes restaurant_params
      respond_to do |format|
        format.json { render json: @restaurant.to_json }
      end
    else
      respond_to do |format|
        format.json { render json: @restaurant.errors.full_messages, status: 422}
      end
    end
  end
  
  def set_state
    @state = State.find_by_slug(params[:state_id])
  end

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
