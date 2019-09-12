class PlacesController < ApplicationController

  def index
    @places = Place.order("name").paginate
  end

end
