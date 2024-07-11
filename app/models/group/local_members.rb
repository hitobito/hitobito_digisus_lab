# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

class Group::LocalMembers < Group::Members
  children Group::LocalMembers

  class Leader < Role::Leader
  end

  class ActiveMember < Role::ActiveMember
    self.permissions = [:group_and_below_read]
  end

  class PassiveMember < Role::PassiveMember
  end

  roles ActiveMember, Leader, PassiveMember
end
