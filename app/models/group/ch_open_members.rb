
class Group::ChOpenMembers < Group

  class EMailDistribution < Role::EMailDistribution
  end

  class InvoiceContact < Role::InvoiceContact
  end

  class MainContact < Role::MainContact
  end

  class Mailing < Role::Mailing
  end

  roles EMailDistribution, InvoiceContact, MainContact, Mailing
end
