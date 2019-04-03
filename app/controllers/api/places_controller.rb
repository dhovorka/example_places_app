class Api::PlacesController < ApplicationController

def index
  @places = Place.all
  render "index.json.jbuilder"
end

def show
@place = Place.find_by(id: params[:id])
render "show.json.jbuilder"
end

def create
  @place = Place.create
  @place.name = params[:name]
  @place.address = params[:address]
  @place.save
  render "show.json.jbuilder"
end

end
