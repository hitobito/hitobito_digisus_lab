class AddCompanyDetails < ActiveRecord::Migration[4.2]
  def change
    add_column :people, :employees, :integer
    add_column :people, :apprentices, :boolean
    add_column :people, :InvoiceNumber, :string
    add_column :people, :entryDate, :date
    add_column :people, :leavingData, :date

  end
end
