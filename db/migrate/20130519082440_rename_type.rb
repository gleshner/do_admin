class RenameType < ActiveRecord::Migration
  def up
    rename_column :workshops, :type, :ctype
  end

  def down
    rename_column :workshops, :ctype, :type 
  end
end
