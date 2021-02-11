class CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        
        respond_to do |format|
            if @comment.save
                flash[:notice] = "Comment added successfully"
                format.html { redirect_to @comment.build }
            else
                format.html { redirect_to @comment.build, status: :unprocessable_entity }

            end
        end
    end

    private

    def set_comment
        @comment = Comment.find(params[:id])
    end

    def comment_params
        params.permit(:build_id, :user_id, :description)
    end

end
