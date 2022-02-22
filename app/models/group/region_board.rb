# encoding: utf-8

#  Copyright (c) 2012-2013, Puzzle ITC GmbH. This file is part of
#  hitobito_generic and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_generic.

class Group::RegionBoard < Group::Board
  class President < Role::BoardPresident
  end

  class VicePresident < Role::BoardVicePresident
  end

  class Secretary < Role::BoardSecretary
  end

  class Member < Role::BoardMember
  end

  roles Member, President, Secretary, VicePresident

end
