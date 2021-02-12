class CommentsController < ApplicationController
    before_action :set_comment, only: %i[ destroy ]

    def create
        @comment = Comment.new(comment_params)
        
        respond_to do |format|
            if @comment.save
                flash[:notice] = "Comment added successfully"
                format.html { redirect_to @comment.build }
                format.json { render json: @comment, status: :created, location: @comment.build }
            else
                format.html { redirect_to @comment.build, status: :unprocessable_entity }

            end
        end
    end

    def destroy
        @comment.destroy
        respond_to do |format|
            format.html { redirect_to @comment.build, notice: "Comment was deleted" }
            format.json { head :no_content }
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
