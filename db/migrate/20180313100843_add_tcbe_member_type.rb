class AddTcbeMemberType < ActiveRecord::Migration[4.2]
  def change
    add_column :people, :tcbeMemberType, :string
    add_column :people, :tcbeCompanyType, :string
  end
end
