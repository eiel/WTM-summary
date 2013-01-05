class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.references :event
      t.string :title
      t.string :speaker

      t.timestamps
    end
  end
end
