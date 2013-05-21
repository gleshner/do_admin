class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :title
      t.text :description
      t.string :level
      t.string :type

      t.timestamps
    end
  end
end
