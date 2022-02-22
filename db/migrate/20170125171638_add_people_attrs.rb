class AddPeopleAttrs < ActiveRecord::Migration
  def change
    add_column :people, :title, :string
    add_column :people, :salutation, :string
  end
end
