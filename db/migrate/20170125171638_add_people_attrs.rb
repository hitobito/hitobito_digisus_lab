class AddPeopleAttrs < ActiveRecord::Migration[4.2]
  def change
    add_column :people, :title, :string
    add_column :people, :salutation, :string
  end
end
