# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.


require Rails.root.join('db', 'seeds', 'support', 'person_seeder')

class DigisusLabPersonSeeder < PersonSeeder

  def amount(role_type)
    case role_type.name.demodulize
    when 'Member', 'Participant', 'ActiveMember', 'PassiveMember' then 5
    when 'Contact' then 10
    else 1
    end
  end
end


puzzlers = ['Andreas Maierhofer',
            'Carlo Beltrame',
            'Matthias Viehweger',
            'Oli Brian',
            'Nils Rauch',
            'Pascal Zumkehr',
            'Pascal Simon']
devs = {'Somebody' => 'some@email.example.com'}

puzzlers.each do |puz|
  devs[puz] = "#{puz.split.last.downcase}@puzzle.ch"
end


seeder = DigisusLabPersonSeeder.new

seeder.seed_all_roles

root = Group.root
devs.each do |name, email|
  seeder.seed_developer(name, email, root, Group::TopLayer::Administrator)
end
