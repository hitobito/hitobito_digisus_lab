# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_generic and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.

require File.expand_path("app_root", __dir__)

source "https://rubygems.org"

# Declare your gem's dependencies in jubla_generic.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Load application Gemfile for all application dependencies.
eval File.read(File.expand_path("Gemfile", ENV["APP_ROOT"])) # rubocop:disable Security/Eval

group :development, :test do
  # Explicitly define the path for dependencies on other wagons.
  # gem 'jubla_other_wagon', :path => "#{ENV['APP_ROOT']}/vendor/wagons"
end
