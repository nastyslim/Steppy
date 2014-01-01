class CommentsController < ApplicationController
  def create
    @steppy = Steppy.find(params[:steppy_id])
    @comment = @steppy.comments.create!(params[:comment])
    redirect_to @steppy
  end
end