class RemoveWrongAttributes < ActiveRecord::Migration
  def change
    remove_column :people, :tcbeMemberType
    remove_column :people, :tcbeCompanyType

    remove_column :people, :chOpenMemberType
  end
end
