class EventLogsController < ApplicationController
    def index
        event_logs = EventLog.order(created_at: :desc).all
        @parsed_event_logs = EventLog.parseAll(event_logs)
    end

    def new
        @event_log = EventLog.new
    end

    def create
        @event_log = EventLog.new(event_log_params)

        if @event_log.save
            redirect_to '/event_logs'
        else
            render 'new'
        end
    end

    def show
        @event_log = EventLog.find(params[:id])
    end

    def destroy
        event_log = EventLog.find(params[:id])
        event_log.destroy

        redirect_to '/event_logs'
    end

    private
    def event_log_params
        params.require(:event_log).permit(:data)
    end
end
