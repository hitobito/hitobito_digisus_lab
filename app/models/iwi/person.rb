# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

module Iwi::Person
  extend ActiveSupport::Concern

  SALUTATION = %w[du_m du_w sie_m sie_w]

  included do
    i18n_enum :salutation, SALUTATION
    i18n_setter :salutation, SALUTATION
  end
end
