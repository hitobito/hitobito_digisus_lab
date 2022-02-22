

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
