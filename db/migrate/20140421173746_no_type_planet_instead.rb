class NoTypePlanetInstead < ActiveRecord::Migration
  def change
    add_column :bodies, :planet, :string
    remove_column :bodies, :type, :string
  end
end
