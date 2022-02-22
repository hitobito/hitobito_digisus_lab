

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
