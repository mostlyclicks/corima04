module Refinery
  module Wheels
    class WheelsController < ::ApplicationController

      before_filter :find_all_wheels
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @wheel in the line below:
        present(@page)
      end

      def show
        @wheel = Wheel.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @wheel in the line below:
        present(@page)
      end

    protected

      def find_all_wheels
        @wheels = Wheel.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/wheels").first
      end

    end
  end
end
