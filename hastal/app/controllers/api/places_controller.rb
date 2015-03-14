class Api::PlacesController < ApiController
  def index
    @places = Place.all
  end

  def show
    @place = Place.where(slug: params[:id]).first
  end
end
