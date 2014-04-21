class AddRingsAndTypeColumns < ActiveRecord::Migration
  def change
    add_column :bodies, :type, :string
    add_column :bodies, :rings, :boolean
  end
end
