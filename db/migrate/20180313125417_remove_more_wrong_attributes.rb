class RemoveMoreWrongAttributes < ActiveRecord::Migration[4.2]
  def change
    remove_column :people, :employees
    remove_column :people, :apprentices
    remove_column :people, :InvoiceNumber
    remove_column :people, :entryDate
    remove_column :people, :leavingData
  end
end
