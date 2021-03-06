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

  def seed_demo_person(email, group, role_type)
    attrs = person_attributes(role_type).merge(email: email)
    p = Person.seed(:email, attrs).first
    seed_accounts(p, false)
    seed_role(p, group, role_type)
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

seeder.encrypted_password = BCrypt::Password.create("demo", cost: 1)
seeder.seed_demo_person('admin@hitobito.ch', root, Group::TopLayer::Administrator)
seeder.seed_demo_person('leitung@hitobito.ch', Group.find_by_name('Region Bern'), Group::Local::MainLeader)
seeder.seed_demo_person('mitglied@hitobito.ch', Group.find_by_name('Verein Bern Stadt'), Group::Local::ActiveMember)
