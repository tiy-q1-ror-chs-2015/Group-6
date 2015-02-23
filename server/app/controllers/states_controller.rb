class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def show
    @state = State.find_by_slug(params[:id])
  end

  private

  def state_params
    params.require(:state).permit(
      :name,
      :slug,
      )
  end
end
