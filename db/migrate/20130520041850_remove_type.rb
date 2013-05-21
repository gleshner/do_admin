class RemoveType < ActiveRecord::Migration
  def up
    remove_column :workshops, :ctype
  end

  def down
    add_column :workshops, :ctype, :string
  end
end