class CommentsController < ApplicationController

    def new
       @comment = Comment.new
    end

    def create
        @event_log = EventLog.find(params[:event_log_id])
        @comment = @event_log.comments.create(comments_params)

        redirect_to "/event_logs"
    end

    def destroy
        comment = Comment.find(params[:id])
        event_log = EventLog.find(comment.event_log_id)
        comment.destroy
        redirect_to "/event_logs"
    end
    
    private
    def comments_params
        params.require(:comment).permit(:body)
    end
end
