class RenameApprentices < ActiveRecord::Migration[4.2]
  def change
    rename_column :groups, :apprentices, :apprentice
  end
end
