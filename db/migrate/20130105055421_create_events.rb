class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :number

      t.timestamps
    end
  end
end
