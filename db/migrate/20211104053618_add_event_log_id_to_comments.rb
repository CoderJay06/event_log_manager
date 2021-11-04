class AddEventLogIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :event_log_id, :integer
    add_index :comments, :event_log_id
  end
end
