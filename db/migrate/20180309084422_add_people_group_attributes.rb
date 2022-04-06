class AddPeopleGroupAttributes < ActiveRecord::Migration[4.2]
  def change
    add_column :people, :chOpenMemberType, :string
  end
end
