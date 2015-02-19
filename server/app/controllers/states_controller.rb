class StatesController < ApplicationController
  def index
    @states = States.all
  end

  private

  def state_params
    params.require(:state).permit(
      :name
      )
  end

end
