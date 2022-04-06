class RenameGroupsAttributesToSnakecase < ActiveRecord::Migration[6.1]
  def change
    rename_column :groups, :chOpenMemberType, :ch_open_member_type
    rename_column :groups, :tcbeMemberType, :tcbe_member_type
    rename_column :groups, :tcbeCompanyType, :tcbe_company_type
  end
end
