# frozen_string_literal: true

#  Copyright (c) 2012-2022, Berner Fachhochschule. This file is part of
#  hitobito_digisus_lab and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_digisus_lab.


module Iwi
  module GroupsController

    extend ActiveSupport::Concern

    included do
      self.permitted_attrs += [:ch_open_member_type, :tcbe_member_type, :tcbe_company_type,
                               :employees, :apprentice, :membershipfee, :invoicenumber,
                               :entrydate, :leavingdate]

      #TODO: Find a way to use this method in the view
      def parent_in_ch_open_or_tcbe(group)
        parent_in_ch_open(group) || parent_in_tcbe(group)
      end

      def parent_in_ch_open(group)
        parent = ::Group.where('id = ?', group.object[:parent_id]).try(:[], 0)
        parent.try(:[], :type) == 'Group::TopLayerChOpenMembers'
      end

      def parent_in_tcbe(group)
        parent = ::Group.where('id = ?', group.object[:parent_id]).try(:[], 0)
        parent.try(:[], :type) == 'Group::TopLayerTcbeChMembers'
      end

      helper_method :parent_in_ch_open_or_tcbe
      helper_method :parent_in_tcbe
      helper_method :parent_in_ch_open
    end
  end




end
