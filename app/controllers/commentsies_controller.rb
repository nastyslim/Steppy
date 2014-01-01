class CommentsController < ApplicationController
        def create
                @steppy = Steppy.find(params[:steppy_id])
                @commentsy = @steppy.commentsies.create!(params[:commentsy])
                redirect_to @steppy
        end
end
