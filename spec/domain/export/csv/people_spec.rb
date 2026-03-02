# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

require "spec_helper"
require "csv"

describe "Export::Csv::People" do
  let(:person) { people(:admin) }
  let(:simple_headers) do
    ["Vorname", "Nachname", "Übername", "Organis.-Name", "Juristische Person",
      "Haupt-E-Mail", "zusätzliche Adresszeile", "Strasse", "Hausnummer", "Postfach", "PLZ", "Ort", "Land",
      "Hauptebene", "Rollen", "Titel", "Anrede", "Amt/Abteilung/Bereich", "Funktion/Position",
      "Weitere E-Mail Privat", "Weitere E-Mail Arbeit", "Weitere E-Mail Vater", "Weitere E-Mail Mutter",
      "Weitere E-Mail Andere", "Weitere E-Mails Freitext", "Telefonnummer Privat", "Telefonnummer Mobil",
      "Telefonnummer Arbeit", "Telefonnummer Vater", "Telefonnummer Mutter", "Telefonnummer Fax",
      "Telefonnummer Andere"]
  end

  let(:list) { Person.where(id: person) }
  let(:data) { Export::Tabular::People::PeopleAddress.export(:csv, list) }
  let(:data_without_bom) { data.gsub(Regexp.new("^#{Export::Csv::UTF8_BOM}"), "") }
  let(:csv) { CSV.parse(data_without_bom, headers: true, col_sep: Settings.csv.separator) }

  subject { csv }

  before do
    person.update!(title: "Dr.", salutation: "sie_m", town: "Bern")
  end

  context "export" do
    its(:headers) { should == simple_headers }

    context "first row" do
      subject { csv[0] }

      its(["Vorname"]) { should eq person.first_name }
      its(["Nachname"]) { should eq person.last_name }
      its(["Haupt-E-Mail"]) { should eq person.email }
      its(["Ort"]) { should eq person.town }
      its(["Rollen"]) { should eq "Administrator Verband" }
      its(["Titel"]) { should eq "Dr." }
      its(["Anrede"]) { should eq "Sehr geehrter Herr" }
    end
  end

  context "export_full" do
    let(:data) { Export::Tabular::People::PeopleFull.export(:csv, list) }

    its(:headers) { should include("Titel") }
    its(:headers) { should include("Anrede") }

    context "first row" do
      subject { csv[0] }

      its(["Titel"]) { should eq "Dr." }
      its(["Anrede"]) { should eq "Sehr geehrter Herr" }
    end
  end
end
