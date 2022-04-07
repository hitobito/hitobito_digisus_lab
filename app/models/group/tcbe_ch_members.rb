# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.


class Group::TcbeChMembers < Group


  class EMailDistribution < Role::EMailDistribution
  end

  class InvoiceContact < Role::InvoiceContact
  end

  class MainContact < Role::MainContact
  end

  class Mailing < Role::Mailing
  end

  class ChapterAdmin < Role::ChapterAdmin
  end

  roles EMailDistribution, InvoiceContact, MainContact, Mailing, ChapterAdmin

end
