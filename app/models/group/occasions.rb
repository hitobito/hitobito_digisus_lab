# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

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

  roles Deregistered, GuestSpeaker, Moderator, NotPresent,
    Organisator, Speaker, Participant, Sponsor, Eingeladen
end
