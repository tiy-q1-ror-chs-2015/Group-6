class StatesController < ApplicationController
  def index
    @states = States.all
  end

  def show
   @state = State.find state_params[:id]
  end

  private

  def state_params
    params.require(:state).permit(
      :name
      )
  end

end
