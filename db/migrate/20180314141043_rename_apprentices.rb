class RenameApprentices < ActiveRecord::Migration
  def change
    rename_column :groups, :apprentices, :apprentice
  end
end
