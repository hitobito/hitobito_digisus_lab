class AddTcbeMemberType < ActiveRecord::Migration
  def change
    add_column :people, :tcbeMemberType, :string
    add_column :people, :tcbeCompanyType, :string
  end
end
