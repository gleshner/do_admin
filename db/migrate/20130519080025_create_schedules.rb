class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :classDate
      t.time :startTime
      t.time :endTime

      t.timestamps
    end
  end
end
