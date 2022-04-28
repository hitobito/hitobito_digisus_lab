# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.


class Group::Local < Group

  self.layer = true
  self.event_types = [Event]

  children Group::LocalBoard, Group::LocalOffice, Group::LocalCommittee, Group::LocalMembers,
           Group::LocalContacts, Group::LocalCourses, Group::LocalOccasions, Group::LocalParldigis,
           Group::LocalFinalThesis, Group::LocalStudents, Group::TopLayerChOpenMembers,
           Group::TopLayerTcbeChMembers


  class MainLeader < Role
    self.permissions = [:layer_and_below_full]
  end

  class AddressManager < Role
    self.permissions = [:layer_and_below_full]
  end

  class Leader < Role::Leader
  end

  class ActiveMember < Role::ActiveMember
    self.permissions =  [:layer_and_below_full]
  end

  class Contact < Role::Contact
    self.permissions =  [:layer_and_below_full]
  end

  class FinanceManager < Role
    self.permissions = [:layer_and_below_full, :finance]
  end

  class ParldigiMore < Role::ParldigiMore
    self.permissions = []
  end

  class Sponsor < Role::Sponsor
    self.permissions = []
  end

  class Eingeladen < Role::Eingeladen
    self.permissions = []
  end

  roles AddressManager, ActiveMember, MainLeader, Leader, Contact,
        FinanceManager, ParldigiMore, Sponsor, Eingeladen

end
