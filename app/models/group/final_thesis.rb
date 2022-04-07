# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.


class Group::FinalThesis < Group

  class ThesisInfoEvent < Role::ThesisInfoEvent
  end

  class ThesisProseminar < Role::ThesisProseminar
  end

  class ThesisRequest < Role::ThesisRequest
  end

  class ThesisFirstDiscussion < Role::ThesisFirstDiscussion
  end

  class ThesisProposalSent < Role::ThesisProposalSent
  end

  class ThesisStarted < Role::ThesisStarted
  end

  class ThesisDraftPresentation < Role::ThesisDraftPresentation
  end

  class ThesisSubmitted < Role::ThesisSubmitted
  end

  class ThesisGraded < Role::ThesisGraded
  end

  class ThesisPublished < Role::ThesisPublished
  end

  roles ThesisInfoEvent, ThesisProseminar, ThesisRequest, ThesisFirstDiscussion, ThesisProposalSent,
        ThesisStarted, ThesisDraftPresentation, ThesisSubmitted, ThesisGraded, ThesisPublished


end

#0. Informationsveranstaltung teilgenommen
#0. Proseminar teilgenommen
#1. Angefragt für Betreuung
#2. Erste Besprechung
#3. Proposal geschickt
#4. Abschlussarbeit gestartet
#5. Zwischenpräsentation gehalten
#6. Abschlussarbeit abgegeben
#7. Notenmeldung erstellt
#8. Abschlussarbeit publiziert
