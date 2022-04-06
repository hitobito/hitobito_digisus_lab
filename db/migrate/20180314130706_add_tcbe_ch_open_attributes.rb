class AddTcbeChOpenAttributes < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :employees, :integer
    add_column :groups, :apprentices, :boolean
    add_column :groups, :membershipfee, :float
    add_column :groups,  :invoicenumber, :string
    add_column :groups, :entrydate, :date
    add_column :groups, :leavingdate, :date
  end
end
