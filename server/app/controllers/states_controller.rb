class StatesController < ApplicationController
  def index
    @states = State.all
    respond_to do |format|
      format.json { render json: @states }
    end
  end

  def show
    @state = State.find_by_slug(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @state }
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
