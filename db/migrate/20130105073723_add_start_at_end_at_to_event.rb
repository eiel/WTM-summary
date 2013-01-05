class AddStartAtEndAtToEvent < ActiveRecord::Migration
  def change
    add_column :events, :start_at, :datetime
    add_column :events, :end_at, :datetime
  end
end
