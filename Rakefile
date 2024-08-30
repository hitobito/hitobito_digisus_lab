#!/usr/bin/env rake
#  Copyright (c) 2012-2013, Puzzle ITC GmbH. This file is part of
#  hitobito_generic and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_generic.

begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

ENGINE_PATH = File.expand_path(__dir__)
load File.expand_path('app_root.rb', __dir__)

load 'wagons/wagon_tasks.rake'

load 'rspec/rails/tasks/rspec.rake'

require 'ci/reporter/rake/rspec' unless Rails.env == 'production'

HitobitoDigisusLab::Wagon.load_tasks

namespace :db do
  namespace :test do
    desc "Prepare test database by running migrations only"
    task prepare_with_migrations: :environment do
      Rake::Task["db:test:create"].invoke
      Rake::Task["db:migrate"].invoke
    end
  end
end

# Redefine test:prepare to use the new task
# task 'test:prepare' => 'db:test:prepare_with_migrations'
