class CreateEventsSpeakers < ActiveRecord::Migration
  def up
    create_table :events_speakers do |t|
      t.integer :event_id, null: false
      t.integer :speaker_id, null: false

      t.timestamps
    end
    add_index :events_speakers, :event_id, name: 'events_speakers_event_id_idx'
  end

  def down
    drop_table :events_speakers
  end
end
