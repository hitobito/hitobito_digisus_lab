# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

class RemoveMoreWrongAttributes < ActiveRecord::Migration[4.2]
  def change
    remove_column :people, :employees
    remove_column :people, :apprentices
    remove_column :people, :InvoiceNumber
    remove_column :people, :entryDate
    remove_column :people, :leavingData
  end
end
