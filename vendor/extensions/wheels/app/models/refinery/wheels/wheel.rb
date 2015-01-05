module Refinery
  module Wheels
    class Wheel < Refinery::Core::BaseModel

      extend FriendlyId
      friendly_id :name, :use => [:slugged]
      
      self.table_name = 'refinery_wheels'

      attr_accessible :name, :rim_type, :diameter, :front_rear, :type_of_use, :width, :profile, :spoke_count, :spoke_type, :hub_type, :hub_finish, :carbon_weave, :weight, :max_air_pressure, :model, :related_wheel_id, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
