# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

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
              %i[title salutation department position]
          end
        end
      end
    end
  end
end
