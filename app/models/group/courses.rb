# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.


class Group::Courses < Group

  class MasterStudent < Role::MasterStudent
  end

  class BachelorStudent < Role::BachelorStudent
  end

  class TeachingAssistant < Role::TeachingAssistant
  end

  class Docent < Role::Docent
  end

  class GuestSpeaker < Role::GuestSpeaker
  end

  class Uebung < Role::Uebung
  end

  class DataCoach < Role::DataCoach
  end

  roles BachelorStudent, Docent, GuestSpeaker, TeachingAssistant, MasterStudent, Uebung, DataCoach

end
