# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

module Iwi::Group
  extend ActiveSupport::Concern

  include I18nSettable
  include I18nEnums # core group does not have this

  CHOPEN_MEMBER_TYPE = %w[sponsor collective individual training honorary_member]
  TCBE_MEMBER_TYPE = %w[up to more_than individual training honorary_member]
  TCBE_COMPANY_TYPE = %w[provider user]
  APPRENTICE = [true, false]

  included do
    i18n_enum :ch_open_member_type, CHOPEN_MEMBER_TYPE
    i18n_setter :ch_open_member_type, CHOPEN_MEMBER_TYPE

    i18n_enum :tcbe_member_type, TCBE_MEMBER_TYPE
    i18n_setter :tcbe_member_type, TCBE_MEMBER_TYPE

    i18n_enum :tcbe_company_type, TCBE_COMPANY_TYPE
    i18n_setter :tcbe_company_type, TCBE_COMPANY_TYPE

    i18n_enum :apprentice, APPRENTICE
    i18n_setter :apprentice, APPRENTICE
  end
end
