module Refinery
  module Wheels
    module Admin
      class WheelsController < ::Refinery::AdminController

        crudify :'refinery/wheels/wheel',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
