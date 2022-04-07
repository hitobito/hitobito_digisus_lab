# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.


class Group::Students < Group

  class Kaltakquise < Role::Kaltakquise
  end

  class Reserviert < Role::Reserviert
  end

  class Interessiert < Role::Interessiert
  end

  class Abgesagt < Role::Abgesagt
  end

  class Storniert < Role::Storniert
  end

  class Angemeldet < Role::Angemeldet
  end

  roles Abgesagt, Angemeldet, Interessiert, Kaltakquise, Reserviert, Storniert

end
