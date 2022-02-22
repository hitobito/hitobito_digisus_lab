module Iwi::Group
  extend ActiveSupport::Concern

  include I18nEnums, I18nSettable #core group does not have this

  CHOPEN_MEMBER_TYPE = ['sponsor', 'collective', 'individual', 'training', 'honorary_member']
  TCBE_MEMBER_TYPE = ['up', 'to', 'more_than', 'individual', 'training', 'honorary_member']
  TCBE_COMPANY_TYPE = ['provider', 'user']
  APPRENTICE = [true, false]

  included do

    i18n_enum :chOpenMemberType, CHOPEN_MEMBER_TYPE
    i18n_setter :chOpenMemberType, CHOPEN_MEMBER_TYPE

    i18n_enum :tcbeMemberType, TCBE_MEMBER_TYPE
    i18n_setter :tcbeMemberType, TCBE_MEMBER_TYPE

    i18n_enum :tcbeCompanyType, TCBE_COMPANY_TYPE
    i18n_setter :tcbeCompanyType, TCBE_COMPANY_TYPE

    i18n_enum :apprentice, APPRENTICE
    i18n_setter :apprentice, APPRENTICE
  end

end
