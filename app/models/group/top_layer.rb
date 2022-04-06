# encoding: utf-8

#  Copyright (c) 2012-2013, Puzzle ITC GmbH. This file is part of
#  hitobito_generic and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_generic.

class Group::TopLayer < Group

  self.layer = true
  self.event_types = [Event, Event::Course]
  self.default_children = [Group::TopLayerBoard, Group::TopLayerOffice, Group::TopLayerContacts]

  children Group::TopLayerContacts, Group::Local, Group::TopLayerStudents, Group::TopLayerCourses,
           Group::TopLayerParldigis, Group::TopLayerOccasions, Group::TopLayerFinalThesis,
           Group::TopLayerBoard, Group::TopLayerOffice, Group::Region

  class Administrator < Role
    self.permissions = [:admin, :layer_and_below_full, :finance]
  end

  roles Administrator

end
