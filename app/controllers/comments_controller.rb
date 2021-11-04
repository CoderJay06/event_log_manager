class CommentsController < ApplicationController

    def new
        @event_log = EventLog.find(params[event_log_id])
        @comment = @event_log.comments.new(parent_id: params[:parent_id])
    end

    def create
        byebug
        @event_log = EventLog.find(params[:event_log_id])
        @comment = @event_log.comments.new(comments_params)

        respond_to do |f|
            if @comment.save
                f.html { redirect_to @event_log }
            end
        end

        redirect_to root_path
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        redirect_to '/event_logs'
    end
    
    private
    def comments_params
        params.require(:comment).permit(:body)
    end
end
