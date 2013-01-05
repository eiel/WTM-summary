class AddSpeakerToPresentation < ActiveRecord::Migration
  def change
    remove_column :presentations, :speaker
    add_column :presentations, :speaker_id, :integer
  end
end
