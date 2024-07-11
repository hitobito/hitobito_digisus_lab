# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

class AddCompanyDetails < ActiveRecord::Migration[4.2]
  def change
    add_column :people, :employees, :integer
    add_column :people, :apprentices, :boolean
    add_column :people, :InvoiceNumber, :string
    add_column :people, :entryDate, :date
    add_column :people, :leavingData, :date
  end
end
