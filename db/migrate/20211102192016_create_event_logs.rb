class CreateEventLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :event_logs do |t|

      t.timestamps
    end
  end
end
