class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all.order("created_at desc")
  end

  # def show
  # end
  #
  # def random
  # end
end
