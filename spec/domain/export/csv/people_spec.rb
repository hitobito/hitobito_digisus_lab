# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.


#  Copyright (c) 2012-2014, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

require 'spec_helper'
require 'csv'

describe 'Export::Csv::People' do

    let(:person) { people(:admin) }
    let(:simple_headers) do
      ["Vorname", "Nachname", "Übername", "Organis.-Name", "Kontakt:Organisation?",
       "Haupt-E-Mail", "Adresse", "PLZ", "Ort", "Land", "Geschlecht", "Geburtstag",
       "Hauptebene", "Rollen", "Tags", "Titel", "Anrede", "Amt/Abteilung/Bereich", "Funktion/Position"]
    end

    let(:list) { Person.where(id: person) }
    let(:data) { Export::Tabular::People::PeopleAddress.export(:csv, list) }
    let(:csv)  { CSV.parse(data, headers: true, col_sep: Settings.csv.separator) }

    subject { csv }

    before do
      person.update!(title: 'Dr.', salutation: 'sie_m', town: 'Bern')
    end

    context 'export' do
      its(:headers) { should == simple_headers }

      context 'first row' do
        subject { csv[0] }

        its(['Vorname']) { should eq person.first_name }
        its(['Nachname']) { should eq person.last_name }
        its(['Haupt-E-Mail']) { should eq person.email }
        its(['Ort']) { should eq person.town }
        its(['Geschlecht']) { should eq person.gender_label }
        its(['Rollen']) { should eq 'Administrator Verband' }
        its(['Titel']) { should eq 'Dr.' }
        its(['Anrede']) { should eq 'Sehr geehrter Herr' }
      end
    end

    context 'export_full' do
      its(:headers) { should include('Titel') }
      its(:headers) { should include('Anrede') }
      let(:data) { Export::Tabular::People::PeopleFull.export(:csv, list) }

      context 'first row' do
        subject { csv[0] }

        its(['Titel']) { should eq 'Dr.' }
        its(['Anrede']) { should eq 'Sehr geehrter Herr' }
      end
    end
end
