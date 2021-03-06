class EventLog < ApplicationRecord
    has_many :comments, dependent: :destroy
    accepts_nested_attributes_for :comments

    def self.parse(event_log)
        # byebug
        event_log.split.filter {|s| s[0..2] == "src" || s[0..2] == "dst" }
    end

    def self.parseAll(event_logs)
        event_logs.collect {|e|  { log: e, parsed_data: self.parse(e.data) } }
    end

end
