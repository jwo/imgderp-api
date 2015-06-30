class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all.order("created_at desc")
  end

  # def show
  # end
  #
  def random
    @galleries = Gallery.all.order("RANDOM()")
    render :index
  end
end
