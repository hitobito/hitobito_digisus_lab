# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.


class RenameGroupsAttributesToSnakecase < ActiveRecord::Migration[6.1]
  def change
    rename_column :groups, :chOpenMemberType, :ch_open_member_type
    rename_column :groups, :tcbeMemberType, :tcbe_member_type
    rename_column :groups, :tcbeCompanyType, :tcbe_company_type

    Group.reset_column_information
  end
end
