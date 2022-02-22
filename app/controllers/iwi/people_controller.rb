module Iwi
  module PeopleController

    extend ActiveSupport::Concern

    included do
      self.permitted_attrs += [:title, :salutation, :department, :position]
    end
  end
end
