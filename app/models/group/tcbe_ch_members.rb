
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
