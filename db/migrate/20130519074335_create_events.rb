class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :e_name
      t.date :startDate
      t.integer :duration

      t.timestamps
    end
  end
end
