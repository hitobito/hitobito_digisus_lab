module Iwi::Group
  extend ActiveSupport::Concern

  include I18nEnums, I18nSettable #core group does not have this

  CHOPEN_MEMBER_TYPE = ['sponsor', 'collective', 'individual', 'training', 'honorary_member']
  TCBE_MEMBER_TYPE = ['up', 'to', 'more_than', 'individual', 'training', 'honorary_member']
  TCBE_COMPANY_TYPE = ['provider', 'user']
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
