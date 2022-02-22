class AddPeopleGroupAttributes < ActiveRecord::Migration
  def change
    add_column :people, :chOpenMemberType, :string
  end
end
