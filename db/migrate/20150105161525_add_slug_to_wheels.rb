class AddSlugToWheels < ActiveRecord::Migration
  def change
    add_column :refinery_wheels, :slug, :string
    add_index :refinery_wheels, :slug
  end
end
