class AddNewPeopleAttrs < ActiveRecord::Migration[4.2]
  def change
    add_column :people, :department, :string
    add_column :people, :position, :string
  end
end
