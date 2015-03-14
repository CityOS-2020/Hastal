class PlacesController < ApplicationController
  before_action :authenticate_owner!, only: [:edit, :update]
  before_action :set_place, only: [:edit, :update]

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to root_url, notice: 'Place was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = current_owner.place
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:description, :address, :phone, :image)
    end
end
