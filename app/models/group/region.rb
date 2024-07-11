# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

class Group::Region < Group
  self.layer = true
  self.event_types = [Event, Event::Course]
  self.default_children = [Group::RegionBoard, Group::RegionOffice, Group::RegionContacts]

  children Group::RegionBoard, Group::RegionOffice, Group::RegionCommittee, Group::RegionMembers,
    Group::RegionContacts, Group::RegionStudents, Group::Region, Group::Local
end
