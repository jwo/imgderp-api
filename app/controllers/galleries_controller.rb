class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all.order("created_at desc")
  end

  def show
    @gallery = Gallery.find_by permalink: params[:id]
  end

  def random
    @galleries = Gallery.all.order("RANDOM()")
    render :index
  end
end
