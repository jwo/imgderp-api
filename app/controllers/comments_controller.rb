class CommentsController < ApplicationController

  def create

    @comment = Comment.new
    @comment.text = params[:text]
    @comment.name = params[:name]
    @comment.permalink = SecureRandom.hex(6)
    @comment.gallery = Gallery.find_by permalink: params[:gallery_id]
    if @comment.save
      render json: {created: true}, status: 201
    else
      render json: @comment.errors, status: 422
    end

  end
end
