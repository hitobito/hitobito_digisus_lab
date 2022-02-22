# encoding: utf-8

#  Copyright (c) 2012-2013, Puzzle ITC GmbH. This file is part of
#  hitobito_generic and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_generic.

class Group::CasModule < Group

  class Visited2019 < Role::Visited2019
  end

  class Passed2019 < Role::Passed2019
  end

  class NotPassed2019 < Role::NotPassed2019
  end

  class Visited2020 < Role::Visited2020
  end

  class Passed2020 < Role::Passed2020
  end

  class NotPassed2020 < Role::NotPassed2020
  end

  class Visited2021 < Role::Visited2021
  end

  class Passed2021 < Role::Passed2021
  end

  class NotPassed2021 < Role::NotPassed2021
  end

  roles Visited2019, Visited2020, Visited2021, Passed2019, Passed2020, Passed2021, NotPassed2019, NotPassed2020, NotPassed2021

end
