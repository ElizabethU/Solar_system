class AddCurrentToBodies < ActiveRecord::Migration
  def change
    add_column :bodies, :current, :boolean
  end
end
