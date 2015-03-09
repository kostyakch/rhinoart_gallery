class GalleriesController < ApplicationController

  def index
    @galleries = RhinoartGallery::Gallery.all
  end

  # GET /galleries/slug
  def show
    @gallery = RhinoartGallery::Gallery.find(params[:id])
  end

end
