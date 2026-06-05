# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

require "spec_helper"

describe Export::PeopleExportJob do
  include JobObservationSpecHelper

  subject do
    Export::PeopleExportJob.new(format, user.id, group.id, {},
      household: household, full: full,
      selection: selection, filename: "people_export")
  end

  let(:user) { people(:admin) }
  let(:group) { groups(:ch) }
  let(:household) { false }
  let(:selection) { false }
  let(:file) { subject.job_observation }

  before do
    SeedFu.quiet = true
    SeedFu.seed [Rails.root.join("db", "seeds")]
  end

  context "creates a CSV-Export" do
    let(:format) { :csv }
    let(:full) { false }

    it "and saves it" do
      subject.enqueue!
      subject.perform

      lines = read_data_from_generated_file(file).lines
      expect(lines.size).to eq(2)
      expect(lines[0]).to match(/Vorname;Nachname;.*/)
      expect(lines[0].split(";").count).to match(32)
    end
  end
end
