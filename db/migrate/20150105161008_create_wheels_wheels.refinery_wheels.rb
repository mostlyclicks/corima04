# This migration comes from refinery_wheels (originally 1)
class CreateWheelsWheels < ActiveRecord::Migration

  def up
    create_table :refinery_wheels do |t|
      t.string :name
      t.string :rim_type
      t.string :diameter
      t.string :front_rear
      t.string :type_of_use
      t.string :width
      t.string :profile
      t.string :spoke_count
      t.string :spoke_type
      t.string :hub_type
      t.string :hub_finish
      t.string :carbon_weave
      t.integer :weight
      t.string :max_air_pressure
      t.string :model
      t.integer :related_wheel_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-wheels"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/wheels/wheels"})
    end

    drop_table :refinery_wheels

  end

end
