class AddGroupAttributes < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :chOpenMemberType, :string
    add_column :groups, :tcbeMemberType, :string
    add_column :groups, :tcbeCompanyType, :string
  end
end
