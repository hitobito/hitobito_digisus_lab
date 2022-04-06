module Iwi
  module GroupsController

    extend ActiveSupport::Concern

    included do
      self.permitted_attrs += [:ch_open_member_type, :tcbe_member_type, :tcbe_company_type, :employees, :apprentice, :membershipfee, :invoicenumber, :entrydate, :leavingdate]

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
