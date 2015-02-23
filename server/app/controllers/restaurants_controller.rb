class RestaurantsController < ApplicationController
  before_action :set_state, except: [:update]
  def show
    @restaurant = Restaurant.find params[:id]
  end

  def index
    @restaurants = @state.restaurants
  end

  def create
    @restaurant = @state.restaurants.create restaurant_params
  end

  def update
    @restaurant = Restaurant.find params[:id]
    @restaurant.update_attributes restaurant_params
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
