module Refinery
  module Wheels
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Wheels

      engine_name :refinery_wheels

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "wheels"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.wheels_admin_wheels_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/wheels/wheel',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Wheels)
      end
    end
  end
end
