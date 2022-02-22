class AddNewPeopleAttrs < ActiveRecord::Migration
  def change
    add_column :people, :department, :string
    add_column :people, :position, :string
  end
end
