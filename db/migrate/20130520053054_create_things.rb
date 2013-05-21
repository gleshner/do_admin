class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.integer :event_id
      t.integer :workshop_id
      t.integer :presenter_id
      t.date :classDate
      t.time :startTime
      t.time :endTime

      t.timestamps
    end
    add_index :things, :event_id
    add_index :things, :workshop_id
    add_index :things, :presenter_id
  end
end
