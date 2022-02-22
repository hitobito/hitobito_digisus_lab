# encoding: utf-8

#  Copyright (c) 2017, Institut IWI. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_iwi.

module Iwi
  module Export
    module Csv
      module People
        module PeopleAddress
          extend ActiveSupport::Concern

          included do
            alias_method_chain :person_attributes, :title
          end

          def person_attributes_with_title
            person_attributes_without_title +
              [:title, :salutation, :department, :position]
          end
        end
      end
    end
  end
end
