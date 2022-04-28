# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.


class Group::TopLayerParldigis < Group::Parldigis

  children Group::TopLayerParldigis

  class Parldigi < Role::Parldigi
    self.permissions = []
  end

  class ParldigiMore < Role::ParldigiMore
    self.permissions = []
  end

  roles Parldigi, ParldigiMore

end
