module Iwi::Person
  extend ActiveSupport::Concern

  SALUTATION = ["du_m", "du_w", "sie_m", "sie_w"]

  included do
    i18n_enum :salutation, SALUTATION
    i18n_setter :salutation, SALUTATION
  end

end
