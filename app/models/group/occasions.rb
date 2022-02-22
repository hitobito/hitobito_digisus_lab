

class Group::Occasions < Group

  class Participant < Role::Participant
  end

  class Speaker < Role::Speaker
  end

  class Moderator < Role::Moderator
  end

  class Deregistered < Role::Deregistered
  end

  class NotPresent < Role::NotPresent
  end

  class Organisator < Role::Organisator
  end

  class GuestSpeaker < Role::GuestSpeaker
  end

  class Sponsor < Role::Sponsor
  end

  class Eingeladen < Role::Eingeladen
  end

  roles Deregistered, GuestSpeaker, Moderator, NotPresent, Organisator, Speaker, Participant, Sponsor, Eingeladen

end
