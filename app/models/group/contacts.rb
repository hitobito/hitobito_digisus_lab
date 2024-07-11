# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

class Group::Contacts < Group
  class MainContact < Role::MainContact
  end

  class CoreTeam < Role::CoreTeam
  end

  class Customer < Role::Customer
  end

  class ExternalProvider < Role::ExternalProvider
  end

  class President < Role::BoardPresident
  end

  class VicePresident < Role::BoardVicePresident
  end

  class Secretary < Role::BoardVicePresident
  end

  class Member < Role::BoardVicePresident
  end

  roles MainContact, CoreTeam, Customer, ExternalProvider
end
