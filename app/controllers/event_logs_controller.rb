class EventLogsController < ApplicationController
    def index
        @event_logs = EventLog.all
    end

    def new
        @event_log = EventLog.new
    end

    def create
        @event_log = EventLog.new(event_log_params)
        if @event_log.save
            # redirect_to "/event_logs/#{@event_log.id}"
            redirect_to '/event_logs'
        else
            render 'new'
        end
    end

    def show
        @event_log = EventLog.find(params[:id])
    end

    def destroy
    end

    private
    def event_log_params
        params.require(:event_log).permit(:data)
    end
end
