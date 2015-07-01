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

  def create
    @gallery = Gallery.new permalink: SecureRandom.hex(6)
    # {
    #   created_at: nil,
    #   updated_at: nil,
    #   images[0][url] = "",
    #   images[1][url] = ""
    # }
    params[:images].each do |img|
      @gallery.images.build permalink: SecureRandom.hex(6),
                            url: img.last[:url]
    end

    if @gallery.save
      render :show, status: 201
    else
      render json: @gallery.errors, status: 422
    end

  end
end
